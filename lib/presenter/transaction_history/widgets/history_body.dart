import 'package:flutter/material.dart';
import 'package:foxfit_test/model/transaction.dart';
import 'package:foxfit_test/presenter/transaction_history/widgets/transaction_tile.dart';
import 'package:intl/intl.dart';

class HistoryBody extends StatelessWidget {
  const HistoryBody({this.transactions, super.key});

  final List<Transaction>? transactions;

  @override
  Widget build(BuildContext context) {
    return (transactions == null || transactions!.isEmpty)
        ? const Center(child: Text('No transactions'))
        // : ListView.separated(itemBuilder: (context, index) => , separatorBuilder: separatorBuilder, itemCount: itemCount)
        : Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                color: const Color(0xFFF3F3F3),
                padding:
                    const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                child: Text(
                  DateTime.now().day - 1 == transactions!.first.date.day
                      ? 'Yesterday'
                      : DateFormat('EEEE, MMM d, yyyy')
                          .format(transactions!.first.date),
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
              ),
              ListView.separated(
                padding: const EdgeInsets.all(0),
                physics: const NeverScrollableScrollPhysics(),
                separatorBuilder: ((context, index) => const Divider()),
                shrinkWrap: true,
                itemCount: transactions!.length,
                itemBuilder: (context, index) => Column(
                  children: [
                    TransactionTile(
                      transaction: transactions![index],
                    ),
                  ],
                ),
              ),
            ],
          );
  }
}
