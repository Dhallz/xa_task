import 'package:flutter/foundation.dart';
import 'package:myapp/domain/features/task/entities/task_entity.dart';
import 'package:myapp/domain/features/task/repositories/task_repository.dart';
import 'package:myapp/infrastructure/dtos/task/task_dto.dart';

class TaskController {
  final TaskRepository taskRepository;

  TaskController(this.taskRepository);

  Future<List<TaskEntity>> getTaskList() async {
    TaskEntity taskEntity;
    List<TaskDto> taskDtoList;
    List<TaskEntity> taskEntityList;

    taskDtoList = await taskRepository.getTaskDtoList();

    taskDtoList.forEach((taskDto) {
      taskEntityList.add(taskEntity.fromDto(taskDto));
    });

    debugPrint("taskEntityList => ${taskEntityList.first.title}");
    return taskEntityList;
  }
}
