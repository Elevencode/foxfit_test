import 'package:bloc/bloc.dart';
import 'package:foxfit_test/constants.dart';
import 'package:foxfit_test/model/transaction.dart';
import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction_history_bloc.freezed.dart';
part 'transaction_history_event.dart';
part 'transaction_history_state.dart';


// делаю сразу по привычке bloc, т. к. нет datasource - просто статичные данные прокидываю
class TransactionHistoryBloc
    extends Bloc<TransactionHistoryEvent, TransactionHistoryState> {
  TransactionHistoryBloc() : super(const _LoadInProgress()) {
    on<_TransactionHistoryStarted>(_onStarted);
  }
}

Future<void> _onStarted(
  _TransactionHistoryStarted event,
  Emitter<TransactionHistoryState> emit,
) async {
  emit(const _LoadInProgress());
  try {
    emit(_LoadSuccess(transactions: transactions));
  } catch (e) {
    emit(_LoadFailure(e.toString()));
  }
}
