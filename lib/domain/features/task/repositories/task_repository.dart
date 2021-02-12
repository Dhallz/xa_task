import 'package:myapp/infrastructure/dtos/task/task_dto.dart';

abstract class TaskRepository {
  Future<List<TaskDto>> getTaskDtoList();
  Future<TaskDto> getTaskDtoFromId({int id});
}
