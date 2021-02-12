import 'package:get/get.dart';
import 'package:myapp/presentation/views/task/task_view.dart';
import 'package:myapp/presentation/views/task/task_view_controller_bindings.dart';

import 'routes.dart';

class Navigation {
  static List<GetPage> routes = [
    GetPage(
        name: Routes.TASK,
        page: () => TaskView(),
        binding: TaskViewControllerBindings()),
  ];
}
