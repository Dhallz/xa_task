import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TaskView extends GetView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('XEFI | Task'),
      ),
      body: _buildContent(),
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
        // TODO - construire en fonction de la liste
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
      itemCount: 10, // TODO - longeur de la liste
    );
  }
}
