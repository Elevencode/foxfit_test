import 'package:foxfit_test/constants.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction.freezed.dart';

@freezed
class Transaction with _$Transaction {
  const Transaction._();

  const factory Transaction({
    required TransactionType transactionType,
    required CurrencyType currencyType,
    required Currency fiatCurrency,
    required Currency cryptoCurrency,
    required double amountFrom,
    required double amountTo,
    required double rate,
    required DateTime date,
  }) = _Transaction;
}
