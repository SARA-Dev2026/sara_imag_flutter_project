import 'package:get/get.dart';

class ImageTaskController extends GetxController {
  var imageSize = 100.0.obs;

  void updateSize(double value) {
    imageSize.value = value;
  }
}
