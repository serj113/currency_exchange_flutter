import 'package:currency_exchange_flutter/domain/currency.dart';

abstract class GetAllCurrenciesUseCase {
  List<Currency> invoke() {
    return const [];
  }
}