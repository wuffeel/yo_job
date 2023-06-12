import 'package:freezed_annotation/freezed_annotation.dart';

part 'vacancy_model.freezed.dart';

part 'vacancy_model.g.dart';

enum CurrencyType {
  UAH,
  USD,
}

@freezed
class VacancyModel with _$VacancyModel {
  @JsonSerializable()
  const factory VacancyModel({
    required String id,
    String? vacancyName,
    String? companyName,
    CurrencyType? currencyType,
    int? salaryValue,
  }) = _VacancyModel;

  factory VacancyModel.fromJson(Map<String, dynamic> json) =>
      _$VacancyModelFromJson(json);
}
