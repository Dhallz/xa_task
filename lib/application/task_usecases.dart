import 'package:flutter/foundation.dart';
import 'package:myapp/application/task_events.dart';
import 'package:myapp/application/task_state.dart';
import 'package:myapp/domain/features/task/controllers/task_controller.dart';
import 'package:myapp/domain/features/task/entities/task_entity.dart';

class TaskUsecases {
  final TaskController taskController;

  TaskState taskState;

  TaskUsecases(this.taskController);

  addEvent({
    @required TaskEvents event,
    @required TaskState state,
  }) {
    event.maybeWhen(
      none: () {
        debugPrint("Event => None");
      },
      init: () {
        debugPrint("Event => Init");
      },
      getTaskList: () async {
        List<TaskEntity> taskEntityList;

        taskEntityList = await taskController.getTaskList();
        debugPrint("Event => getTaskList");
        debugPrint("taskList => ${taskEntityList.first.title}");
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
}
