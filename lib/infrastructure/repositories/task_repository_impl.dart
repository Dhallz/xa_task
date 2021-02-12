import 'package:flutter/foundation.dart';
import 'package:myapp/domain/features/task/repositories/task_repository.dart';
import 'package:myapp/infrastructure/dtos/task/task_dto.dart';

class TaskRepositoryImpl implements TaskRepository {
  TaskRepositoryImpl();

  @override
  Future<List<TaskDto>> getTaskDtoList() async {
    Map<String, dynamic> json;
    List<TaskDto> taskDtoList;
    Future.delayed(Duration(milliseconds: 100)).then((_) {
      json = {
        "message": "données recupérées avec succés",
        "data": [
          {
            "id": 1,
            "title": "Task1",
            "description": "C'est ma 1er tache",
            "date": "12/02/2021"
          },
          {
            "id": 2,
            "title": "Task2",
            "description": "C'est ma 2nd tache.",
            "date": "13/02/2021"
          },
          {
            "id": 3,
            "title": "Task3",
            "description":
                "C'est ma 3eme tache, pour la st Valentin. with bae Quentin <3",
            "date": "14/02/2021"
          }
        ],
      };
    });

    taskDtoList = json["data"]
        .map<TaskDto>((element) => TaskDto.fromJson(element))
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
