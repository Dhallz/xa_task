import 'package:myapp/infrastructure/dtos/task/task_dto.dart';

class TaskEntity {
  int id;
  String title;
  String description;
  DateTime date;

  TaskEntity({
    this.id,
    this.title,
    this.description,
    this.date,
  });

  TaskEntity copyWith({
    int id,
    String title,
    String description,
    DateTime date,
  }) {
    return TaskEntity(
      id: id ?? this.id,
      title: title ?? this.title,
      description: description ?? this.description,
    );
  }

  TaskEntity fromDto(TaskDto dto) {
    return TaskEntity(
      id: dto.id,
      title: dto.title,
      description: dto.description,
      date: dto.date,
    );
  }

  TaskDto toDto(TaskEntity entity) {
    return TaskDto(
      id: entity.id,
      title: entity.title,
      description: entity.description,
      date: entity.date,
    );
  }
}
