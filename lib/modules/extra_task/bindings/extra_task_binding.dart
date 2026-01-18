import 'package:get/get.dart';
import '../controllers/extra_task_controller.dart';

class ExtraTaskBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ExtraTaskController>(() => ExtraTaskController());
  }
}
