import 'package:flutter/material.dart';
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

  RxList<TaskEntity> taskList = <TaskEntity>[].obs;

  Rx<RxStatus> getTaskListStatus = RxStatus.empty().obs;

  @override
  void onInit() {
    change(TaskState.initial(), status: RxStatus.loading());

    super.onInit();
  }

  @override
  void onReady() {
    change(state, status: RxStatus.success());
    ever(
      getTaskListStatus,
      (_) {
        taskList
          ..clear()
          ..addAll(usecases.taskEntityList);
        return usecases.addEvent(
          event: TaskEvents.getTaskList(),
          state: state,
        );
      },
      onDone: () => change(
        usecases.getState(),
      ),
    );
    super.onReady();
  }
}
