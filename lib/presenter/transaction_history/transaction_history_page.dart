import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foxfit_test/constants.dart';
import 'package:foxfit_test/model/transaction.dart';
import 'package:foxfit_test/presenter/transaction_history/bloc/transaction_history_bloc.dart';
import 'package:foxfit_test/presenter/transaction_history/widgets/history_body.dart';
import 'package:foxfit_test/presenter/transaction_history/widgets/history_header.dart';
import 'package:intl/intl.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class TransactionHistoryPage extends StatefulWidget {
  const TransactionHistoryPage({super.key});

  @override
  State<TransactionHistoryPage> createState() => _TransactionHistoryPageState();
}

class _TransactionHistoryPageState extends State<TransactionHistoryPage> {
  late List<Transaction> transactions;
  late CurrencyType selectedCurrencyType;
  late TransactionType selectedTransactionType;

  final List<CurrencyType> currencyTypes = [
    CurrencyType.crypto,
    CurrencyType.wire
  ];
  final List<TransactionType> transactionTypes = [
    TransactionType.buy,
    TransactionType.sell
  ];

  @override
  void initState() {
    super.initState();
    selectedCurrencyType = CurrencyType.crypto;
    selectedTransactionType = TransactionType.sell;
    transactions = [];
  }

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<TransactionHistoryBloc>(context)
        .add(const TransactionHistoryEvent.started());
    return BlocBuilder<TransactionHistoryBloc, TransactionHistoryState>(
      builder: (context, state) => state.map(
        loadInProgress: (_) => const Center(child: CircularProgressIndicator()),
        loadFailure: (state) => Container(),
        loadSuccess: (state) {
          transactions = _sortTransactionsByDate(state.transactions);
          final transactionsByDate = groupBy(
            transactions,
            (transaction) =>
                DateFormat('dd').format(transaction.date).substring(0, 2),
          );

          return Scaffold(
            backgroundColor: const Color(0xFF18181C),
            appBar: AppBar(
              toolbarHeight: 37,
              elevation: 0,
              leading: InkWell(
                onTap: () => Navigator.pop(context),
                child: const Icon(
                  LineAwesomeIcons.alternate_long_arrow_left,
                  size: 36,
                ),
              ),
              centerTitle: false,
              titleSpacing: 0,
              title: const Text('Transaction History'),
              backgroundColor: const Color(0xFF18181C),
            ),
            body: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  HistoryHeader(
                    selectedCurrencyType: selectedCurrencyType,
                    currencyTypes: currencyTypes,
                    onCurrencyTypeChanged: _onCurrencyTypeChanged,
                    selectedTransactionType: selectedTransactionType,
                    transactionTypes: transactionTypes,
                    onTransactionTypeChanged: _onTransactionTypeChanged,
                    onChangeDate: _onChangeDate,
                  ),
                  if (transactions.isEmpty) ...[
                    Container(
                      padding: const EdgeInsets.all(24),
                      color: Colors.white,
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height,
                      child: const Text(
                        'No transactions',
                        style: TextStyle(fontSize: 24),
                      ),
                    ),
                  ],
                  for (final transaction in transactionsByDate.entries)
                    Container(
                      color: Colors.white,
                      child: HistoryBody(
                        transactions: transaction.value,
                      ),
                    ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  void _onCurrencyTypeChanged(CurrencyType? type) {
    setState(() {
      selectedCurrencyType = type!;
    });
  }

  void _onTransactionTypeChanged(TransactionType? type) {
    setState(() {
      selectedTransactionType = type!;
    });
  }

//TODO: доделать - значение не получается
  void _onChangeDate() {
    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2021),
      lastDate: DateTime.now(),
      builder: (context, child) => Theme(
        data: Theme.of(context).copyWith(
          colorScheme: const ColorScheme.light(
            primary: Color(0xFF18181C),
          ),
        ),
        child: child!,
      ),
    );
  }

//TODO: нужна ли вообще сортировка в таком виде?
  List<Transaction> _sortTransactionsByDate(List<Transaction> transactions) {
    final List<Transaction> list = [];
    list.addAll(transactions);
    list.sort(((a, b) => b.date.compareTo(a.date)));

    return list;
  }
}
