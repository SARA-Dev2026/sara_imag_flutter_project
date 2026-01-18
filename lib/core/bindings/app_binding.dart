import 'package:get/get.dart';
import '../controllers/language_controller.dart';

class AppBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(LanguageController(), permanent: true);
  }
}
