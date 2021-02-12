import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/application/task_usecases.dart';

class TaskViewController extends GetxController {
  final TaskUsecases usecases;

  TaskViewController({
    @required this.usecases,
  });
}
