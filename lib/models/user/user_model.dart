import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';

part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  @JsonSerializable()
  const factory UserModel({
    required String id,
    required String email,
    String? firstName,
    String? lastName,
    String? patronymic,
    DateTime? birthDate,
    String? assetUrl,
    String? workModelId,
    bool? isRecruiter,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}
