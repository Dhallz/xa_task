import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/presentation/views/task/task_view_controller.dart';

class TaskView extends GetView<TaskViewController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('XEFI | Task'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextButton(
                onPressed: () =>
                    controller.getTaskListStatus.value = RxStatus.loading(),
                child: Text("clic me")),
          ),
          Divider(),
          Expanded(child: _buildContent()),
        ],
      ),
      drawer: Drawer(
        child: Column(
          children: [
            DrawerHeader(
              child: SizedBox(
                width: context.width,
              ),
              decoration: BoxDecoration(
                color: Colors.red,
              ),
            ),
            Text(
              'Mon application',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildContent() {
    return ListView.separated(
      padding: const EdgeInsets.all(12),
      separatorBuilder: (context, index) {
        return Divider(
          color: Colors.black38,
          thickness: 1,
        );
      },
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(
            'Task $index',
          ),
          subtitle: Text(
            'Date',
          ),
          leading: Text(
            '$index',
          ),
          trailing: Text(
            'Description',
          ),
        );
      },
      itemCount: 10,
    );
  }
}
