import 'package:get/get.dart';
import 'package:myapp/application/task_usecases.dart';
import 'package:myapp/domain/features/task/controllers/task_controller.dart';
import 'package:myapp/domain/features/task/repositories/task_repository.dart';
import 'package:myapp/infrastructure/repositories/task_repository_impl.dart';
import 'package:myapp/presentation/views/task/task_view_controller.dart';

class TaskViewControllerBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TaskViewController>(
      () => TaskViewController(
        usecases: Get.put(
          TaskUsecases(
            taskController: Get.put(
              TaskController(
                taskRepository: Get.put<TaskRepository>(TaskRepositoryImpl()),
              ),
            ),
          ),
        ),
      ),
    );
    // Get.put<TaskRepository>(
    //   TaskRepositoryImpl(),
    // );
    // Get.put(
    //   TaskController(
    //     Get.find<TaskRepository>(),
    //   ),
    // );
    // Get.put(
    //   TaskUsecases(
    //     Get.find<TaskController>(),
    //   ),
    // );
  }
}
