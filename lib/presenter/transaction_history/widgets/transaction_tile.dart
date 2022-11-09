import 'package:flutter/material.dart';
import 'package:foxfit_test/constants.dart';
import 'package:foxfit_test/model/transaction.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:foxfit_test/utils/extensions.dart';

class TransactionTile extends StatelessWidget {
  const TransactionTile({required this.transaction, super.key});

  final Transaction transaction;

  @override
  Widget build(BuildContext context) {
    final operand = transaction.transactionType == TransactionType.buy;

    return ListTile(
      leading: transaction.transactionType == TransactionType.sell
          ? const Icon(
              LineAwesomeIcons.minus_circle,
              color: Color(0xFFFF07EC),
              size: 28,
            )
          : const Icon(
              LineAwesomeIcons.plus_circle,
              color: Color(0xFF00C41E),
              size: 28,
            ),
      title: Text(
        '${transaction.transactionType.name.capitalize()} ${transaction.cryptoCurrency.name.toUpperCase()}',
      ),
      subtitle: Text(
        DateFormat('M/dd/yyyy').format(transaction.date),
      ),
      trailing: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '${operand ? '+' : '-'} ${transaction.amountTo} ${transaction.cryptoCurrency.name.toUpperCase()}',
          ),
          const SizedBox(height: 4),
          Text(
            '${operand ? '-' : '+'} ${transaction.amountFrom} ${transaction.fiatCurrency.name.toUpperCase()}',
          ),
        ],
      ),
    );
  }
}
