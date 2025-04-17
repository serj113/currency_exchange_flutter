import 'package:currency_exchange_flutter/domain/converted_currency.dart';
import 'package:equatable/equatable.dart';

class HomeState extends Equatable {
  final String selectedBase;
  final String selectedTarget;
  final double baseAmount;
  final List<ConvertedCurrency> convertedCurrencies;

  const HomeState({
    this.selectedBase = "",
    this.selectedTarget = "",
    this.baseAmount = 0.0,
    this.convertedCurrencies = const [],
  });

  @override
  List<Object?> get props => [
    selectedBase,
    selectedTarget,
    baseAmount,
    convertedCurrencies,
  ];

  HomeState copyWith({
    String? selectedBase,
    String? selectedTarget,
    double? baseAmount,
    List<ConvertedCurrency>? convertedCurrencies,
  }) {
    return HomeState(
      selectedBase: selectedBase ?? this.selectedBase,
      selectedTarget: selectedTarget ?? this.selectedTarget,
      baseAmount: baseAmount ?? this.baseAmount,
      convertedCurrencies: convertedCurrencies ?? this.convertedCurrencies,
    );
  }
}
