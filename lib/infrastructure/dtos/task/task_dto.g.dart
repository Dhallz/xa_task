// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TaskDto _$_$_TaskDtoFromJson(Map<String, dynamic> json) {
  return _$_TaskDto(
    id: json['id'] as int,
    title: json['title'] as String,
    description: json['description'] as String,
    date: json['date'] == null ? null : DateTime.parse(json['date'] as String),
  );
}

Map<String, dynamic> _$_$_TaskDtoToJson(_$_TaskDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'date': instance.date?.toIso8601String(),
    };
