import 'package:equatable/equatable.dart';

class Currency extends Equatable {
  final String code;
  final String name;
  final double rate;

  const Currency({this.code = "", this.name = "", this.rate = 0.0});

  @override
  List<Object?> get props => [code, name, rate];

  Currency copyWith({String? code, String? name, double? rate}) {
    return Currency(
      code: code ?? this.code,
      name: name ?? this.name,
      rate: rate ?? this.rate,
    );
  }
}
