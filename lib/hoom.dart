import 'package:flutter/material.dart';
import 'student_features.dart'; // For StudentDrawer

// --- Store Page (Homee) ---
class Homee extends StatelessWidget {
  const Homee({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5DC),
      drawer: const StudentDrawer(),
      appBar: AppBar(
        title: const Text("مستور", style: TextStyle(color: Colors.white)),
        backgroundColor: const Color(0xFF4B2C5E),
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(Icons.store, size: 80, color: Color(0xFF4B2C5E)),
            SizedBox(height: 20),
            Text(
              "مرحباً بك في المتجر",
              style: TextStyle(
                fontSize: 24,
                color: Color(0xFF4B2C5E),
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: const Color(0xFF4B2C5E),
        unselectedItemColor: Colors.grey,
        backgroundColor: Colors.white,
        items: [
          _buildNavItem(Icons.home, "الرئيسية"),
          _buildNavItem(Icons.category, "الفئات"),
          _buildNavItem(Icons.local_offer, "العروض"),
          _buildNavItem(Icons.shopping_cart, "السلة"),
          _buildNavItem(Icons.person, "حسابي"),
        ],
        onTap: (index) {
          // print("Selected Index: $index");
        },
      ),
    );
  }

  BottomNavigationBarItem _buildNavItem(IconData icon, String label) {
    return BottomNavigationBarItem(icon: Icon(icon), label: label);
  }
}
