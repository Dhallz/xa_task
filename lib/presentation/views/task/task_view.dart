import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/presentation/views/task/task_view_controller.dart';

class TaskView extends GetView<TaskViewController> {
  @override
  Widget build(BuildContext context) {
    return controller.obx(
      (state) => _buildContent(),
      onLoading: Center(
        child: CircularProgressIndicator(),
      ),
      onEmpty: SizedBox(),
      onError: (error) => Text(error),
    );
  }

  Widget _buildContent() {
    int index = 0;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () {
              controller.stringSave.value = index.toString();
              index++;
            },
            child: Text('appel de fonction save'),
          ),
          SizedBox(
            height: 100,
          ),
          GestureDetector(
            onTap: () {
              controller.stringDelete.value = index.toString();
              index++;
            },
            child: Text('appel de fonction delete'),
          ),
        ],
      ),
    );
  }
}
