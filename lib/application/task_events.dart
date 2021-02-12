import 'package:freezed_annotation/freezed_annotation.dart';

part 'task_events.freezed.dart';

@freezed
abstract class TaskEvents with _$TaskEvents {
  const factory TaskEvents.none() = None;
  const factory TaskEvents.init() = Init;
  const factory TaskEvents.newTask() = NewTask;
  const factory TaskEvents.saveTask() = SaveTask;
  const factory TaskEvents.openTask() = OpenTask;
  const factory TaskEvents.editTask() = EditTask;
  const factory TaskEvents.deleteTask() = DeleteTask;
  const factory TaskEvents.refresh() = Refresh;
  const factory TaskEvents.getTaskList() = GetTaskList;
}
