import 'package:flutter_bloc/flutter_bloc.dart';

import 'home_event.dart';
import 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeState()) {
    on<OnTapCurrency>((event, emit) {
      emit(state.copyWith(selectedTarget: event.currencyCode));
    });
    on<OnChangeBaseAmount>((event, emit) {
      emit(state.copyWith(baseAmount: event.baseAmount));
    });
  }
}
