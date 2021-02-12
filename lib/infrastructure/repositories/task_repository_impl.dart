import 'package:flutter/foundation.dart';
import 'package:myapp/domain/features/task/repositories/task_repository.dart';
import 'package:myapp/infrastructure/dtos/task/task_dto.dart';

class TaskRepositoryImpl implements TaskRepository {
  TaskRepositoryImpl();

  @override
  Future<List<TaskDto>> getTaskDtoList() async {
    List<TaskDto> taskDtoList = <TaskDto>[];
    Map<String, dynamic> json = {
      "message": "données recupérées avec succés",
      "data": [
        {
          "id": 1,
          "title": "Task1",
          "description": "C'est ma 1er tache",
          "date": "2021-02-12 10:15:02.0000000"
        },
        {
          "id": 2,
          "title": "Task2",
          "description": "C'est ma 2nd tache.",
          "date": "2021-01-12 06:58:35.0000000"
        },
        {
          "id": 3,
          "title": "Task3",
          "description":
              "C'est ma 3eme tache, pour la st Valentin. with bae Quentin <3",
          "date": "2021-02-06 20:15:12.0000000"
        }
      ],
    };

    taskDtoList = json['data']
        .map<TaskDto>((taskDto) => TaskDto.fromJson(taskDto))
        .toList();

    debugPrint("taskDtoList => ${taskDtoList.first.title}");

    return taskDtoList;
  }

  @override
  Future<TaskDto> getTaskDtoFromId({int id}) {
    // TODO: implement getTaskDtoFromId
    throw UnimplementedError();
  }
}
