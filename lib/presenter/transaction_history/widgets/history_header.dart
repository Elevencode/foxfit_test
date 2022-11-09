import 'package:flutter/material.dart';
import 'package:foxfit_test/constants.dart';
import 'package:foxfit_test/utils/extensions.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class HistoryHeader extends StatelessWidget {
  const HistoryHeader({
    required this.selectedCurrencyType,
    required this.currencyTypes,
    required this.onCurrencyTypeChanged,
    required this.selectedTransactionType,
    required this.transactionTypes,
    required this.onTransactionTypeChanged,
    required this.onChangeDate,
    super.key,
  });

  final CurrencyType selectedCurrencyType;
  final List<CurrencyType> currencyTypes;
  final Function(CurrencyType?) onCurrencyTypeChanged;

  final TransactionType selectedTransactionType;
  final List<TransactionType> transactionTypes;
  final Function(TransactionType?) onTransactionTypeChanged;

  final VoidCallback onChangeDate;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                  color: Colors.white.withOpacity(0.2),
                  style: BorderStyle.solid,
                  width: 0.80),
            ),
            child: Theme(
              data: Theme.of(context)
                  .copyWith(canvasColor: const Color(0xFF18181C)),
              child: DropdownButton<CurrencyType>(
                underline: const SizedBox(),
                icon: const Icon(
                  Icons.expand_more_outlined,
                  color: Colors.white,
                ),
                isExpanded: true,
                value: selectedCurrencyType,
                onChanged: onCurrencyTypeChanged,
                items: currencyTypes
                    .map(
                      (type) => DropdownMenuItem(
                        value: type,
                        child: Text(
                          type.name.capitalize(),
                          style: const TextStyle(
                              color: Colors.white, fontSize: 36),
                        ),
                      ),
                    )
                    .toList(),
              ),
            ),
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                        color: Colors.white.withOpacity(0.2),
                        style: BorderStyle.solid,
                        width: 0.80),
                  ),
                  child: Theme(
                    data: Theme.of(context).copyWith(
                      canvasColor: const Color(0xFF18181C),
                    ),
                    child: DropdownButton<TransactionType>(
                      borderRadius: BorderRadius.circular(10),
                      underline: const SizedBox(),
                      icon: const Icon(
                        Icons.expand_more_outlined,
                        color: Colors.white,
                      ),
                      isExpanded: true,
                      value: selectedTransactionType,
                      items: transactionTypes
                          .map(
                            (type) => DropdownMenuItem(
                              value: type,
                              child: Text(
                                '${selectedCurrencyType.name.capitalize()} ${type.name.capitalize()}',
                                style: const TextStyle(color: Colors.white),
                              ),
                            ),
                          )
                          .toList(),
                      onChanged: onTransactionTypeChanged,
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 10),
              SizedBox(
                width: 49,
                height: 49,
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    padding: const EdgeInsets.all(0),
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    side: BorderSide(
                      color: Colors.white.withOpacity(0.2),
                    ),
                  ),
                  onPressed: onChangeDate,
                  child: const Icon(
                    Icons.calendar_today_outlined,
                    size: 24,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
