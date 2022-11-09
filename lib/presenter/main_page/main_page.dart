import 'package:flutter/material.dart';
import 'package:foxfit_test/presenter/transaction_history/transaction_history_page.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF18181C),
      body: Center(
        child: Container(
          decoration: BoxDecoration(border: Border.all()),
          child: OutlinedButton(
            style: OutlinedButton.styleFrom(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              side: BorderSide(
                color: Colors.white.withOpacity(0.2),
              ),
            ),
            onPressed: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const TransactionHistoryPage(),
              ),
            ),
            child: const Icon(
              Icons.arrow_right_alt_outlined,
              color: Colors.white,
              size: 36,
            ),
          ),
        ),
      ),
    );
  }
}
