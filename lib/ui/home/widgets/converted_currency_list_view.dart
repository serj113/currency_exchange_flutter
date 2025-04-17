import 'package:currency_exchange_flutter/domain/converted_currency.dart';
import 'package:currency_exchange_flutter/ui/home/bloc/home_bloc.dart';
import 'package:currency_exchange_flutter/ui/home/bloc/home_state.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ConvertedCurrencyListView extends StatelessWidget {
  const ConvertedCurrencyListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocSelector<HomeBloc, HomeState, List<ConvertedCurrency>>(
      selector: (state) => state.convertedCurrencies,
      builder: (context, state) {
        return ListView.builder(
          itemCount: state.length,
          itemBuilder: (context, index) {
            return Text("");
          },
        );
      },
    );
  }
}
