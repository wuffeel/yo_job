// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserModel _$$_UserModelFromJson(Map<String, dynamic> json) => _$_UserModel(
      id: json['id'] as String,
      email: json['email'] as String,
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      patronymic: json['patronymic'] as String?,
      birthDate: json['birthDate'] == null
          ? null
          : DateTime.parse(json['birthDate'] as String),
      assetUrl: json['assetUrl'] as String?,
      workModelId: json['workModelId'] as String?,
      isRecruiter: json['isRecruiter'] as bool?,
    );

Map<String, dynamic> _$$_UserModelToJson(_$_UserModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'patronymic': instance.patronymic,
      'birthDate': instance.birthDate?.toIso8601String(),
      'assetUrl': instance.assetUrl,
      'workModelId': instance.workModelId,
      'isRecruiter': instance.isRecruiter,
    };
