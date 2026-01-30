import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../core/database/db_helper.dart';

class StudentAffairsController extends GetxController {
  final DBHelper _dbHelper = DBHelper();

  Future<void> addStudent(String name, String grade) async {
    // 1: General, 2: IT (Assuming IDs from DBHelper init)
    int departmentId = 1; 
    
    await _dbHelper.addStudent(name, grade, departmentId);
    
    Get.snackbar(
      "Success", 
      "Student added successfully",
      backgroundColor: Colors.green,
      colorText: Colors.white
    );
  }
}
