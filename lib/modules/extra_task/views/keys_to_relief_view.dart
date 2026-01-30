import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/extra_task_controller.dart';

class KeysToReliefView extends GetView<ExtraTaskController> {
  const KeysToReliefView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5DC), // Cream background
      appBar: AppBar(
        title: const Text(
          "مفاتيح الفرج",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
        backgroundColor: const Color(0xFF4B2C5E), // Purple theme
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Get.back(),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: Column(
          children: [
            _buildReliefButton(
              context,
              icon: Icons.menu_book,
              text: "القرآن الكريم",
              onTap: () => controller.navigateToKeysQuran(),
            ),
            const SizedBox(height: 15),
            _buildReliefButton(
              context,
              icon: Icons.access_time,
              text: "الصلاة",
              onTap: () => controller.navigateToKeysPrayer(),
            ),
            const SizedBox(height: 15),
            _buildReliefButton(
              context,
              icon: Icons.favorite,
              text: "الصلاة على النبي ﷺ",
              onTap: () => controller.navigateToKeysSalawat(),
            ),
            const SizedBox(height: 15),
            _buildReliefButton(
              context,
              icon: Icons.stars,
              text: "أسماء الله الحسنى",
              onTap: () => controller.navigateToKeysAsmaAllah(),
            ),
            const SizedBox(height: 15),
            _buildReliefButton(
              context,
              icon: Icons.volunteer_activism,
              text: "الدعاء",
              onTap: () => controller.navigateToKeysDua(),
            ),
            const SizedBox(height: 15),
            _buildReliefButton(
              context,
              icon: Icons.handshake,
              text: "التوسل",
              onTap: () => controller.navigateToKeysTawassul(),
            ),
            const SizedBox(height: 15),
            _buildReliefButton(
              context,
              icon: Icons.replay,
              text: "الاستغفار",
              onTap: () => controller.navigateToKeysIstighfar(),
            ),
            const SizedBox(height: 15),
            _buildReliefButton(
              context,
              icon: Icons.key,
              text: "عشرة مفاتيح للفرج بعد الشدائد",
              onTap: () => controller.navigateToKeys10Keys(),
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }

  Widget _buildReliefButton(
    BuildContext context, {
    required IconData icon,
    required String text,
    required VoidCallback onTap,
  }) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(50),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 18),
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [
              Color(0xFF5E3A6E),
              Color(0xFF6B4778),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(50),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.2),
              blurRadius: 8,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(
              child: Text(
                text,
                textAlign: TextAlign.right,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 0.5,
                ),
              ),
            ),
            const SizedBox(width: 15),
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.white.withValues(alpha: 0.2),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Icon(
                icon,
                color: Colors.white,
                size: 28,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
