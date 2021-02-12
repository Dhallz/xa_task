import 'package:flutter/foundation.dart';
import 'package:myapp/application/task_events.dart';
import 'package:myapp/application/task_state.dart';
import 'package:myapp/domain/features/task/controllers/task_controller.dart';
import 'package:myapp/domain/features/task/entities/task_entity.dart';

class TaskUsecases {
  final TaskController taskController;

  TaskState taskState;

  TaskUsecases({
    @required this.taskController,
  });

  addEvent([
    TaskEvents event,
    TaskState state,
  ]) {
    event.maybeWhen(
      none: () {
        debugPrint("Event => None");
      },
      init: () {
        debugPrint("Event => Init");
      },
      getTaskList: () async {
        List<TaskEntity> taskEntityList = <TaskEntity>[];

        taskEntityList = await taskController.getTaskList();

        debugPrint("taskList => ${taskEntityList.first.title}");
        debugPrint("Event => getTaskList");
      },
      deleteTask: () {
        debugPrint("Event => deleteTask");
      },
      editTask: () {
        debugPrint("Event => editTask");
      },
      newTask: () {
        debugPrint("Event => newTask");
      },
      openTask: () {
        debugPrint("Event => openTask");
      },
      refresh: () {
        debugPrint("Event => refreshk");
      },
      saveTask: () {
        debugPrint("Event => saveTask");
      },
      orElse: () {
        debugPrint("error");
      },
    );
  }

  TaskState getState() {
    return taskState;
  }
}
