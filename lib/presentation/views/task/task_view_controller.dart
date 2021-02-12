import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:myapp/application/task_events.dart';
import 'package:myapp/application/task_state.dart';
import 'package:myapp/application/task_usecases.dart';
import 'package:myapp/domain/features/task/entities/task_entity.dart';

class TaskViewController extends GetxController with StateMixin<TaskState> {
  final TaskUsecases usecases;

  TaskViewController({@required this.usecases});

  RxList<TaskEntity> list = <TaskEntity>[].obs;
  RxString stringSave = ''.obs;
  RxString stringDelete = ''.obs;

  @override
  void onInit() {
    change(
      TaskState.initial(),
      status: RxStatus.loading(),
    );
    super.onInit();
  }

  @override
  void onReady() async {
    list.addAll(await usecases.taskController.getTaskList());
    debugPrint(list.length.toString());
    change(
      state,
      status: RxStatus.success(),
    );
    ever(
      stringSave,
      (_) => usecases.addEvent(
        event: TaskEvents.saveTask(),
        state: state,
      ),
      onDone: () => change(
        usecases.getState(),
      ),
    );
    ever(
      stringDelete,
      (_) => usecases.addEvent(
        event: TaskEvents.deleteTask(),
        state: state,
      ),
      onDone: () => change(
        usecases.getState(),
      ),
    );
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  @override
  void refresh() {
    super.refresh();
  }
}
