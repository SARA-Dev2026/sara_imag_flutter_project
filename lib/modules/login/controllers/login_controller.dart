import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../core/database/db_helper.dart';
import '../../../../routes/app_routes.dart';

class LoginController extends GetxController {
  final DBHelper _dbHelper = DBHelper();
  var isLoading = false.obs;

  Future<void> login(String username, String password) async {
    isLoading.value = true;
    bool success = await _dbHelper.loginUser(username.trim(), password.trim());
    isLoading.value = false;

    if (success) {
      Get.offAllNamed(Routes.HOME);
    } else {
      Get.snackbar(
        "Error", 
        "Invalid username or password",
        backgroundColor: Colors.red,
        colorText: Colors.white
      );
    }
  }

  Future<void> register(String username, String password) async {
    isLoading.value = true;
    bool success = await _dbHelper.registerUser(username.trim(), password.trim());
    isLoading.value = false;

    if (success) {
      Get.snackbar(
        "Success", 
        "User registered successfully",
        backgroundColor: Colors.green,
        colorText: Colors.white
      );
    } else {
      Get.snackbar(
        "Error", 
        "Username already exists",
        backgroundColor: Colors.red,
        colorText: Colors.white
      );
    }
  }
}
