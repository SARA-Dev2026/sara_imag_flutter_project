import 'package:get/get.dart';
import '../controllers/student_affairs_controller.dart';

class StudentAffairsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<StudentAffairsController>(() => StudentAffairsController());
  }
}
