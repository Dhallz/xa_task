import 'package:get/get.dart';
import 'package:myapp/application/task_usecases.dart';
import 'package:myapp/domain/features/task/controllers/task_controller.dart';
import 'package:myapp/domain/features/task/repositories/task_repository.dart';
import 'package:myapp/infrastructure/repositories/task_repository_impl.dart';

class TaskViewControllerBindings extends Bindings {
  @override
  void dependencies() {
    Get.put<TaskRepository>(
      TaskRepositoryImpl(),
    );
    Get.put(
      TaskController(
        Get.find<TaskRepository>(),
      ),
    );
    Get.put(
      TaskUsecases(
        Get.find<TaskController>(),
      ),
    );
  }
}
