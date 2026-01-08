import 'package:flutter/material.dart';
import 'hoom.dart'; // Import for Homee page
import 'login.dart'; // Import for LoginPage

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
              accountName: const Text("مستخدم"),
              accountEmail: const Text("user@example.com"),
              currentAccountPicture: const CircleAvatar(
                backgroundColor: Colors.white,
                child: Icon(Icons.person, color: Color(0xFF4B2C5E)),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.store, color: Color(0xFF4B2C5E)),
              title: const Text("المتجر"),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const Homee()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.person_add, color: Color(0xFF4B2C5E)),
              title: const Text("إضافة طالب"),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const AddStudent()),
                );
              },
            ),
            const Spacer(),
            ListTile(
              leading: const Icon(Icons.logout, color: Color(0xFF4B2C5E)),
              title: const Text("تسجيل الخروج"),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const LoginPage()),
                );
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
        title: const Text(
          "إضافة طالب جديد",
          style: TextStyle(color: Colors.white),
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
                decoration: const InputDecoration(
                  labelText: "اسم الطالب",
                  border: OutlineInputBorder(),
                ),
                validator: (value) =>
                    value == null || value.isEmpty ? "يرجى إدخال الاسم" : null,
              ),
              const SizedBox(height: 20),
              TextFormField(
                controller: _gradeController,
                decoration: const InputDecoration(
                  labelText: "الصف الدراسي",
                  border: OutlineInputBorder(),
                ),
                validator: (value) =>
                    value == null || value.isEmpty ? "يرجى إدخال الصف" : null,
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
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text("تمت إضافة الطالب بنجاح")),
                    );
                  }
                },
                child: const Text("حفظ البيانات"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
