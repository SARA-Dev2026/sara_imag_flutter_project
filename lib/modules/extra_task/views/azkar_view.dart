import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/extra_task_controller.dart';

class AzkarView extends GetView<ExtraTaskController> {
  const AzkarView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5DC), // Cream background
      appBar: AppBar(
        title: const Text(
          "أذكار",
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
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: Center(
              child: Text(
                "EN",
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
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
            _buildAzkarButton(
              context,
              icon: Icons.favorite,
              text: "أذكاري الخاصة",
              onTap: () => controller.navigateToSpecialAzkar(),
            ),
            const SizedBox(height: 15),
            _buildAzkarButton(
              context,
              icon: Icons.star,
              text: "فضل الذكر",
              onTap: () => controller.navigateToVirtueOfRemembrance(),
            ),
            const SizedBox(height: 15),
            _buildAzkarButton(
              context,
              icon: Icons.wb_sunny_outlined,
              text: "أذكار الإستيقاظ من النوم",
              onTap: () => controller.navigateToWakingUpAzkar(),
            ),
            const SizedBox(height: 15),
            _buildAzkarButton(
              context,
              icon: Icons.wb_sunny,
              text: "أذكار الصـــباح",
              onTap: () => controller.navigateToMorningAzkar(),
            ),
            const SizedBox(height: 15),
            _buildAzkarButton(
              context,
              icon: Icons.person_outline,
              text: "أذكار الصــلاة",
              onTap: () => controller.navigateToPrayerAzkar(),
            ),
            const SizedBox(height: 15),
            _buildAzkarButton(
              context,
              icon: Icons.nightlight_round,
              text: "أذكار المســـــاء",
              onTap: () => controller.navigateToEveningAzkar(),
            ),
            const SizedBox(height: 15),
            _buildAzkarButton(
              context,
              icon: Icons.hotel,
              text: "أذكار قبل النــوم",
              onTap: () => controller.navigateToBedtimeAzkar(),
            ),
            const SizedBox(height: 15),
            _buildAzkarButton(
              context,
              icon: Icons.mosque,
              text: "أذكار الحج والعمرة",
              onTap: () => controller.navigateToHajjUmrahAzkar(),
            ),
            const SizedBox(height: 15),
            _buildAzkarButton(
              context,
              icon: Icons.photo_library,
              text: "بطاقات أذكــار",
              onTap: () => controller.navigateToAzkarCards(),
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }

  Widget _buildAzkarButton(
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
