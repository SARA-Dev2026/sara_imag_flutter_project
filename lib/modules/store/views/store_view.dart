import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../student_affairs/views/student_features_view.dart';
import '../../../routes/app_routes.dart';

class StoreView extends StatelessWidget {
  const StoreView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5DC),
      drawer: const StudentDrawer(),
      appBar: AppBar(
        title: Text(
          "store_title_app".tr,
          style: const TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color(0xFF4B2C5E),
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.store, size: 80, color: Color(0xFF4B2C5E)),
            const SizedBox(height: 20),
            Text(
              "store_welcome".tr,
              style: const TextStyle(
                fontSize: 24,
                color: Color(0xFF4B2C5E),
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton.icon(
                    onPressed: () => Get.back(),
                    icon: const Icon(Icons.arrow_back),
                    label: Text("back_home".tr),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF4B2C5E),
                      foregroundColor: Colors.white,
                    ),
                  ),
                  ElevatedButton.icon(
                    onPressed: () {
                      Get.toNamed(Routes.STUDENT_AFFAIRS);
                    },
                    icon: const Icon(Icons.arrow_forward),
                    label: Text("next_student".tr),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF4B2C5E),
                      foregroundColor: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: const Color(0xFF4B2C5E),
        unselectedItemColor: Colors.grey,
        backgroundColor: Colors.white,
        items: [
          _buildNavItem(Icons.home, "home".tr),
          _buildNavItem(Icons.category, "categories".tr),
          _buildNavItem(Icons.local_offer, "offers".tr),
          _buildNavItem(Icons.shopping_cart, "cart".tr),
          _buildNavItem(Icons.person, "my_account".tr),
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
