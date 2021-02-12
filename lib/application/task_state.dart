import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:myapp/domain/features/task/entities/task_entity.dart';

part 'task_state.freezed.dart';

@freezed
abstract class TaskState with _$TaskState {
  const factory TaskState({
    @required List<TaskEntity> taskList,
  }) = _TaskState;

  factory TaskState.initial() => TaskState(
        taskList: <TaskEntity>[],
      );
}
