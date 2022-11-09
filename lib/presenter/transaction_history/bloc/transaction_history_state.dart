part of 'transaction_history_bloc.dart';

@freezed
class TransactionHistoryState with _$TransactionHistoryState {
  const factory TransactionHistoryState.loadInProgress() = _LoadInProgress;
  const factory TransactionHistoryState.loadSuccess({
    required List<Transaction> transactions,
  }) = _LoadSuccess;
  const factory TransactionHistoryState.loadFailure(String errorText) =
      _LoadFailure;
}
