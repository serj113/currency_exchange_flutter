import 'package:equatable/equatable.dart';

class HomeState extends Equatable {
  final String selectedBase;
  final String selectedTarget;
  final double baseAmount;

  const HomeState({
    required this.selectedBase,
    required this.selectedTarget,
    required this.baseAmount,
  });

  @override
  List<Object?> get props => [selectedBase, selectedTarget, baseAmount];

  HomeState copyWith({
    String? selectedBase,
    String? selectedTarget,
    double? baseAmount,
  }) {
    return HomeState(
      selectedBase: selectedBase ?? this.selectedBase,
      selectedTarget: selectedTarget ?? this.selectedTarget,
      baseAmount: baseAmount ?? this.baseAmount,
    );
  }
}
