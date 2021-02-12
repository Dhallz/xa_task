import 'package:get/get.dart';
import 'package:myapp/presentation/views/task/task_view.dart';
import 'package:myapp/presentation/views/task/task_view_controller_binding.dart';

class Nav {
  static List<GetPage> routes = [
    GetPage(
      name: '/',
      page: () => TaskView(),
      binding: TaskViewControllerBinding()
    ),
  ];
}
