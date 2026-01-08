import 'package:flutter/material.dart';

import 'student_features.dart'; // Import for AddStudent feature

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void _login() {
    if (_formKey.currentState!.validate()) {
      // Navigate to HomePage on success
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const AddStudent()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // 1. Background (Same as Main Screen)
          Positioned.fill(
            child: Image.asset(
              'assets/images/background.png',
              fit: BoxFit.cover,
            ),
          ),
          // 2. Overlay
          Positioned.fill(
            child: Container(
              color: const Color(0xFFF5F5DC).withValues(alpha: 0.3),
            ),
          ),

          // 3. Login Content
          Center(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(24.0),
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Logo
                    Container(
                      width: 150,
                      height: 150,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xFF4B2C5E),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black26,
                            blurRadius: 10,
                            offset: Offset(0, 5),
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.white, width: 2),
                            image: const DecorationImage(
                              image: AssetImage('assets/images/logo.png'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 40),

                    // Title
                    const Text(
                      "تسجيل الدخول",
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF4B2C5E),
                      ),
                    ),
                    const SizedBox(height: 30),

                    // Username Field
                    TextFormField(
                      controller: _usernameController,
                      style: const TextStyle(
                        color: Colors.black,
                      ), // Ensure text is visible
                      decoration: _inputDecoration(
                        "اسم المستخدم",
                        Icons.person,
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'الرجاء إدخال اسم المستخدم';
                        }
                        // Check if value contains any numbers
                        if (RegExp(r'[0-9]').hasMatch(value)) {
                          return 'اسم المستخدم يجب أن يكون نصاً فقط (بدون أرقام)';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 20),

                    // Password Field
                    TextFormField(
                      controller: _passwordController,
                      style: const TextStyle(
                        color: Colors.black,
                      ), // Ensure text is visible
                      obscureText: true,
                      decoration: _inputDecoration("كلمة المرور", Icons.lock),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'الرجاء إدخال كلمة المرور';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 40),

                    // Login Button (Custom Style)
                    GestureDetector(
                      onTap: _login,
                      child: Container(
                        width: double.infinity,
                        height: 55,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: const Color(0xFF4B2C5E),
                          borderRadius: BorderRadius.circular(30),
                          boxShadow: [
                            BoxShadow(
                              color: const Color(
                                0xFF4B2C5E,
                              ).withValues(alpha: 0.4),
                              blurRadius: 10,
                              offset: const Offset(0, 4),
                            ),
                          ],
                        ),
                        child: const Text(
                          "دخول",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),

                    // Register Link
                    TextButton(
                      onPressed: () {
                        // Mock action for now
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text("سيتم تفعيل إنشاء الحساب قريباً"),
                          ),
                        );
                      },
                      child: const Text(
                        "ليس لديك حساب؟ سجل الآن",
                        style: TextStyle(
                          color: Color(0xFF4B2C5E),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  InputDecoration _inputDecoration(String label, IconData icon) {
    return InputDecoration(
      labelText: label,
      labelStyle: const TextStyle(color: Color(0xFF4B2C5E)),
      prefixIcon: Icon(icon, color: const Color(0xFF4B2C5E)),
      filled: true,
      fillColor: Colors.white.withValues(alpha: 0.8),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30),
        borderSide: BorderSide.none,
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30),
        borderSide: BorderSide.none,
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30),
        borderSide: const BorderSide(color: Color(0xFF4B2C5E), width: 2),
      ),
    );
  }
}
