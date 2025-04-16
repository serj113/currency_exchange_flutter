sealed class HomeEvent {}

final class OnTapCurrency extends HomeEvent {
  final String currencyCode;

  OnTapCurrency({required this.currencyCode});
}

class OnChangeBaseAmount extends HomeEvent {
  final double baseAmount;

  OnChangeBaseAmount({required this.baseAmount});
}
