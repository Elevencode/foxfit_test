// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'transaction.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Transaction {
  TransactionType get transactionType => throw _privateConstructorUsedError;
  CurrencyType get currencyType => throw _privateConstructorUsedError;
  Currency get fiatCurrency => throw _privateConstructorUsedError;
  Currency get cryptoCurrency => throw _privateConstructorUsedError;
  double get amountFrom => throw _privateConstructorUsedError;
  double get amountTo => throw _privateConstructorUsedError;
  double get rate => throw _privateConstructorUsedError;
  DateTime get date => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TransactionCopyWith<Transaction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionCopyWith<$Res> {
  factory $TransactionCopyWith(
          Transaction value, $Res Function(Transaction) then) =
      _$TransactionCopyWithImpl<$Res, Transaction>;
  @useResult
  $Res call(
      {TransactionType transactionType,
      CurrencyType currencyType,
      Currency fiatCurrency,
      Currency cryptoCurrency,
      double amountFrom,
      double amountTo,
      double rate,
      DateTime date});
}

/// @nodoc
class _$TransactionCopyWithImpl<$Res, $Val extends Transaction>
    implements $TransactionCopyWith<$Res> {
  _$TransactionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transactionType = null,
    Object? currencyType = null,
    Object? fiatCurrency = null,
    Object? cryptoCurrency = null,
    Object? amountFrom = null,
    Object? amountTo = null,
    Object? rate = null,
    Object? date = null,
  }) {
    return _then(_value.copyWith(
      transactionType: null == transactionType
          ? _value.transactionType
          : transactionType // ignore: cast_nullable_to_non_nullable
              as TransactionType,
      currencyType: null == currencyType
          ? _value.currencyType
          : currencyType // ignore: cast_nullable_to_non_nullable
              as CurrencyType,
      fiatCurrency: null == fiatCurrency
          ? _value.fiatCurrency
          : fiatCurrency // ignore: cast_nullable_to_non_nullable
              as Currency,
      cryptoCurrency: null == cryptoCurrency
          ? _value.cryptoCurrency
          : cryptoCurrency // ignore: cast_nullable_to_non_nullable
              as Currency,
      amountFrom: null == amountFrom
          ? _value.amountFrom
          : amountFrom // ignore: cast_nullable_to_non_nullable
              as double,
      amountTo: null == amountTo
          ? _value.amountTo
          : amountTo // ignore: cast_nullable_to_non_nullable
              as double,
      rate: null == rate
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as double,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TransactionCopyWith<$Res>
    implements $TransactionCopyWith<$Res> {
  factory _$$_TransactionCopyWith(
          _$_Transaction value, $Res Function(_$_Transaction) then) =
      __$$_TransactionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {TransactionType transactionType,
      CurrencyType currencyType,
      Currency fiatCurrency,
      Currency cryptoCurrency,
      double amountFrom,
      double amountTo,
      double rate,
      DateTime date});
}

/// @nodoc
class __$$_TransactionCopyWithImpl<$Res>
    extends _$TransactionCopyWithImpl<$Res, _$_Transaction>
    implements _$$_TransactionCopyWith<$Res> {
  __$$_TransactionCopyWithImpl(
      _$_Transaction _value, $Res Function(_$_Transaction) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transactionType = null,
    Object? currencyType = null,
    Object? fiatCurrency = null,
    Object? cryptoCurrency = null,
    Object? amountFrom = null,
    Object? amountTo = null,
    Object? rate = null,
    Object? date = null,
  }) {
    return _then(_$_Transaction(
      transactionType: null == transactionType
          ? _value.transactionType
          : transactionType // ignore: cast_nullable_to_non_nullable
              as TransactionType,
      currencyType: null == currencyType
          ? _value.currencyType
          : currencyType // ignore: cast_nullable_to_non_nullable
              as CurrencyType,
      fiatCurrency: null == fiatCurrency
          ? _value.fiatCurrency
          : fiatCurrency // ignore: cast_nullable_to_non_nullable
              as Currency,
      cryptoCurrency: null == cryptoCurrency
          ? _value.cryptoCurrency
          : cryptoCurrency // ignore: cast_nullable_to_non_nullable
              as Currency,
      amountFrom: null == amountFrom
          ? _value.amountFrom
          : amountFrom // ignore: cast_nullable_to_non_nullable
              as double,
      amountTo: null == amountTo
          ? _value.amountTo
          : amountTo // ignore: cast_nullable_to_non_nullable
              as double,
      rate: null == rate
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as double,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$_Transaction extends _Transaction {
  const _$_Transaction(
      {required this.transactionType,
      required this.currencyType,
      required this.fiatCurrency,
      required this.cryptoCurrency,
      required this.amountFrom,
      required this.amountTo,
      required this.rate,
      required this.date})
      : super._();

  @override
  final TransactionType transactionType;
  @override
  final CurrencyType currencyType;
  @override
  final Currency fiatCurrency;
  @override
  final Currency cryptoCurrency;
  @override
  final double amountFrom;
  @override
  final double amountTo;
  @override
  final double rate;
  @override
  final DateTime date;

  @override
  String toString() {
    return 'Transaction(transactionType: $transactionType, currencyType: $currencyType, fiatCurrency: $fiatCurrency, cryptoCurrency: $cryptoCurrency, amountFrom: $amountFrom, amountTo: $amountTo, rate: $rate, date: $date)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Transaction &&
            (identical(other.transactionType, transactionType) ||
                other.transactionType == transactionType) &&
            (identical(other.currencyType, currencyType) ||
                other.currencyType == currencyType) &&
            (identical(other.fiatCurrency, fiatCurrency) ||
                other.fiatCurrency == fiatCurrency) &&
            (identical(other.cryptoCurrency, cryptoCurrency) ||
                other.cryptoCurrency == cryptoCurrency) &&
            (identical(other.amountFrom, amountFrom) ||
                other.amountFrom == amountFrom) &&
            (identical(other.amountTo, amountTo) ||
                other.amountTo == amountTo) &&
            (identical(other.rate, rate) || other.rate == rate) &&
            (identical(other.date, date) || other.date == date));
  }

  @override
  int get hashCode => Object.hash(runtimeType, transactionType, currencyType,
      fiatCurrency, cryptoCurrency, amountFrom, amountTo, rate, date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TransactionCopyWith<_$_Transaction> get copyWith =>
      __$$_TransactionCopyWithImpl<_$_Transaction>(this, _$identity);
}

abstract class _Transaction extends Transaction {
  const factory _Transaction(
      {required final TransactionType transactionType,
      required final CurrencyType currencyType,
      required final Currency fiatCurrency,
      required final Currency cryptoCurrency,
      required final double amountFrom,
      required final double amountTo,
      required final double rate,
      required final DateTime date}) = _$_Transaction;
  const _Transaction._() : super._();

  @override
  TransactionType get transactionType;
  @override
  CurrencyType get currencyType;
  @override
  Currency get fiatCurrency;
  @override
  Currency get cryptoCurrency;
  @override
  double get amountFrom;
  @override
  double get amountTo;
  @override
  double get rate;
  @override
  DateTime get date;
  @override
  @JsonKey(ignore: true)
  _$$_TransactionCopyWith<_$_Transaction> get copyWith =>
      throw _privateConstructorUsedError;
}
