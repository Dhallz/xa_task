import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:myapp/domain/features/task/entities/task_entity.dart';
import 'package:myapp/domain/features/task/repositories/task_repository.dart';
import 'package:myapp/infrastructure/dtos/task/task_dto.dart';

class TaskController {
  final TaskRepository taskRepository;

  TaskController({
    @required this.taskRepository,
  });

  Future<List<TaskEntity>> getTaskList() async {
    List<TaskDto> taskDtoList = <TaskDto>[];
    List<TaskEntity> taskEntityList = <TaskEntity>[];

    taskDtoList = await taskRepository.getTaskDtoList();

    taskEntityList =
        taskDtoList.map<TaskEntity>((e) => TaskEntity().fromDto(e)).toList();

    debugPrint("taskEntityList => ${taskEntityList.first.title}");

    return taskEntityList;
  }
}
