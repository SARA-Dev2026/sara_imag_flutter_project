import 'package:get/get.dart';
import '../controllers/image_task_controller.dart';

class ImageTaskBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ImageTaskController>(() => ImageTaskController());
  }
}
