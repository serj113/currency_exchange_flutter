import 'package:equatable/equatable.dart';

class ConvertedCurrency extends Equatable {
  final String code;
  final String name;
  final String rate;

  const ConvertedCurrency({this.code = "", this.name = "", this.rate = ""});

  @override
  List<Object?> get props => [code, name, rate];

  ConvertedCurrency copyWith({String? code, String? name, String? rate}) {
    return ConvertedCurrency(
      code: code ?? this.code,
      name: name ?? this.name,
      rate: rate ?? this.rate,
    );
  }
}
