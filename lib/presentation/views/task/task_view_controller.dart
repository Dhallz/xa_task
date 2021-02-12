import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:myapp/application/task_events.dart';
import 'package:myapp/application/task_state.dart';
import 'package:myapp/application/task_usecases.dart';
import 'package:myapp/domain/features/task/entities/task_entity.dart';

class TaskViewController extends GetxController with StateMixin<TaskState> {
  final TaskUsecases usecases;

  TaskViewController({
    @required this.usecases,
  });

  RxList<TaskEntity> TaskList = <TaskEntity>[].obs;

  @override
  void onInit() {
    change(TaskState.initial(), status: RxStatus.loading());

    super.onInit();
  }

  @override
  void onReady() {
    change(state, status: RxStatus.success());

    usecases.addEvent(
      event: TaskEvents.getTaskList(),
      state: state,
    );

    change(
      usecases.getState(),
    );

    super.onReady();
  }
}
