import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../routes/app_routes.dart';

class StudentDrawer extends StatelessWidget {
  const StudentDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: const Color(0xFFF5F5DC),
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              decoration: const BoxDecoration(color: Color(0xFF4B2C5E)),
              accountName: Text("user_name_drawer".tr),
              accountEmail: const Text("user@example.com"),
              currentAccountPicture: const CircleAvatar(
                backgroundColor: Colors.white,
                child: Icon(Icons.person, color: Color(0xFF4B2C5E)),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.store, color: Color(0xFF4B2C5E)),
              title: Text("store".tr),
              onTap: () {
                Get.offAllNamed(Routes.STORE);
              },
            ),
            ListTile(
              leading: const Icon(Icons.person_add, color: Color(0xFF4B2C5E)),
              title: Text("add_student".tr),
              onTap: () {
                Get.offAllNamed(Routes.STUDENT_AFFAIRS);
              },
            ),
            const Spacer(),
            ListTile(
              leading: const Icon(Icons.logout, color: Color(0xFF4B2C5E)),
              title: Text("logout".tr),
              onTap: () {
                Get.offAllNamed(Routes.LOGIN);
              },
            ),
          ],
        ),
      ),
    );
  }
}

class AddStudent extends StatefulWidget {
  const AddStudent({super.key});

  @override
  State<AddStudent> createState() => _AddStudentState();
}

class _AddStudentState extends State<AddStudent> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _gradeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "add_student_title".tr,
          style: const TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color(0xFF4B2C5E),
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      drawer: const StudentDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: _nameController,
                decoration: InputDecoration(
                  labelText: "student_name".tr,
                  border: const OutlineInputBorder(),
                ),
                validator: (value) => value == null || value.isEmpty
                    ? "please_enter_name".tr
                    : null,
              ),
              const SizedBox(height: 20),
              TextFormField(
                controller: _gradeController,
                decoration: InputDecoration(
                  labelText: "grade".tr,
                  border: const OutlineInputBorder(),
                ),
                validator: (value) => value == null || value.isEmpty
                    ? "please_enter_grade".tr
                    : null,
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF4B2C5E),
                  foregroundColor: Colors.white,
                  minimumSize: const Size(double.infinity, 50),
                ),
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    ScaffoldMessenger.of(
                      context,
                    ).showSnackBar(SnackBar(content: Text("student_added".tr)));
                  }
                },
                child: Text("save_data".tr),
              ),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton.icon(
                    onPressed: () => Get.back(),
                    icon: const Icon(Icons.arrow_back),
                    label: Text("back_store".tr),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF4B2C5E),
                      foregroundColor: Colors.white,
                    ),
                  ),
                  ElevatedButton.icon(
                    onPressed: () {
                      Get.toNamed(Routes.IMAGE_TASK);
                    },
                    icon: const Icon(Icons.arrow_forward),
                    label: Text("next_image_task".tr),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF4B2C5E),
                      foregroundColor: Colors.white,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
