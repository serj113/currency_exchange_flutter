import 'package:currency_exchange_flutter/ui/home/bloc/home_bloc.dart';
import 'package:currency_exchange_flutter/ui/home/bloc/home_event.dart';
import 'package:currency_exchange_flutter/ui/home/bloc/home_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CurrencyRow extends StatelessWidget {
  const CurrencyRow({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocSelector<HomeBloc, HomeState, String>(
      selector: (state) => state.selectedBase,
      builder: (context, state) {
        return Row(
          children: [
            Flexible(
              flex: 3,
              child: TextField(
                onChanged: (value) {
                  context.read<HomeBloc>().add(
                    OnChangeBaseAmount(baseAmount: double.parse(value)),
                  );
                },
              ),
            ),
            Flexible(
              flex: 1,
              child: Text(
                state,
                style: Theme.of(context).textTheme.displayMedium,
              ),
            ),
          ],
        );
      },
    );
  }
}
