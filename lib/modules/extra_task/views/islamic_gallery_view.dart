import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/extra_task_controller.dart';

class IslamicGalleryView extends GetView<ExtraTaskController> {
  const IslamicGalleryView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5DC), // Cream background
      appBar: AppBar(
        title: const Text(
          "المعرض الإسلامي",
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
        actions: [
          IconButton(
            icon: const Icon(Icons.menu, color: Colors.white),
            onPressed: () {
              // Menu action
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: Column(
          children: [
            _buildGalleryButton(
              context,
              icon: Icons.photo_library,
              text: "آيات قرآنيـــة",
              onTap: () => controller.navigateToQuranVerses(),
            ),
            const SizedBox(height: 15),
            _buildGalleryButton(
              context,
              icon: Icons.photo_library,
              text: "أحاديــث",
              onTap: () => controller.navigateToHadithGallery(),
            ),
            const SizedBox(height: 15),
            _buildGalleryButton(
              context,
              icon: Icons.photo_library,
              text: "أذكــــار",
              onTap: () => controller.navigateToAzkarGallery(),
            ),
            const SizedBox(height: 15),
            _buildGalleryButton(
              context,
              icon: Icons.photo_library,
              text: "أدعيـــــة",
              onTap: () => controller.navigateToSupplicationsGallery(),
            ),
            const SizedBox(height: 15),
            _buildGalleryButton(
              context,
              icon: Icons.photo_library,
              text: "كروت تهنئة ومعايدة",
              onTap: () => controller.navigateToGreetingCards(),
            ),
            const SizedBox(height: 15),
            _buildGalleryButton(
              context,
              icon: Icons.photo_library,
              text: "سنن مهجورة",
              onTap: () => controller.navigateToForgottenSunnah(),
            ),
            const SizedBox(height: 15),
            _buildGalleryButton(
              context,
              icon: Icons.photo_library,
              text: "أقوال مأثورة",
              onTap: () => controller.navigateToWiseQuotes(),
            ),
            const SizedBox(height: 15),
            _buildGalleryButton(
              context,
              icon: Icons.photo_library,
              text: "صور متحركة",
              onTap: () => controller.navigateToAnimatedImages(),
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }

  Widget _buildGalleryButton(
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
