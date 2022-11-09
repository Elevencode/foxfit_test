import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foxfit_test/presenter/main_page/main_page.dart';
import 'package:foxfit_test/presenter/transaction_history/bloc/transaction_history_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<TransactionHistoryBloc>(
      create: (_) => TransactionHistoryBloc(),
      child:  MaterialApp(
        theme: ThemeData(fontFamily: 'Questrial'),
        home: const MainPage(),
      ),
    );
  }
}
