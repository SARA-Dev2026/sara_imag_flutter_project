import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/extra_task_controller.dart';

class RamadanView extends GetView<ExtraTaskController> {
  const RamadanView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5DC), // Cream background
      appBar: AppBar(
        title: const Text(
          "رمضانيات",
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
        child: Column(
          children: [
            // Ramadan Decorative Header
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
              decoration: const BoxDecoration(
                color: Color(0xFFF5F5DC),
              ),
              child: Column(
                children: [
                  // Decorative Elements Row 1
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _buildHangingDecoration(Icons.star, isLantern: false),
                      _buildHangingDecoration(Icons.lightbulb_outline, isLantern: true),
                      _buildHangingDecoration(Icons.star, isLantern: false),
                      _buildHangingDecoration(Icons.lightbulb_outline, isLantern: true),
                      _buildHangingDecoration(Icons.star, isLantern: false),
                    ],
                  ),
                  const SizedBox(height: 10),
                  // Main Decorative Row
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildLantern(),
                      _buildCrescent(),
                      _buildLantern(),
                      _buildCrescent(),
                      _buildLantern(),
                    ],
                  ),
                  const SizedBox(height: 20),
                  // Ramadan Kareem Text
                  const Text(
                    "رمضان كريم",
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF4B2C5E),
                      fontFamily: 'Arial',
                    ),
                  ),
                  const SizedBox(height: 10),
                ],
              ),
            ),
            
            // Buttons Section
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  const SizedBox(height: 20),
                  _buildRamadanButton(
                    context,
                    icon: Icons.nightlight_round,
                    text: "أدعية في رمضان",
                    onTap: () => controller.navigateToRamadanSupplications(),
                  ),
                  const SizedBox(height: 15),
                  _buildRamadanButton(
                    context,
                    icon: Icons.nightlight_round,
                    text: "فقه الصيام",
                    onTap: () => controller.navigateToFastingFiqh(),
                  ),
                  const SizedBox(height: 15),
                  _buildRamadanButton(
                    context,
                    icon: Icons.nightlight_round,
                    text: "أخطاء في رمضان",
                    onTap: () => controller.navigateToRamadanMistakes(),
                  ),
                  const SizedBox(height: 15),
                  _buildRamadanButton(
                    context,
                    icon: Icons.nightlight_round,
                    text: "أحكام العيد وآدابه",
                    onTap: () => controller.navigateToEidRules(),
                  ),
                  const SizedBox(height: 15),
                  _buildRamadanButton(
                    context,
                    icon: Icons.photo_library,
                    text: "كروت بهجة ومعايدة",
                    onTap: () => controller.navigateToEidCards(),
                  ),
                  const SizedBox(height: 30),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildHangingDecoration(IconData icon, {required bool isLantern}) {
    return Column(
      children: [
        Container(
          height: 30,
          width: 1,
          color: const Color(0xFF4B2C5E).withValues(alpha: 0.3),
        ),
        Icon(
          icon,
          color: const Color(0xFF4B2C5E),
          size: isLantern ? 20 : 16,
        ),
      ],
    );
  }

  Widget _buildLantern() {
    return Column(
      children: [
        Container(
          height: 20,
          width: 1,
          color: const Color(0xFF4B2C5E).withValues(alpha: 0.3),
        ),
        Container(
          width: 40,
          height: 50,
          decoration: BoxDecoration(
            color: Colors.transparent,
            border: Border.all(color: const Color(0xFF4B2C5E), width: 2),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(
            child: Container(
              width: 20,
              height: 20,
              decoration: const BoxDecoration(
                color: Color(0xFF4B2C5E),
                shape: BoxShape.circle,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildCrescent() {
    return Column(
      children: [
        Container(
          height: 20,
          width: 1,
          color: const Color(0xFF4B2C5E).withValues(alpha: 0.3),
        ),
        const Icon(
          Icons.nightlight_round,
          color: Color(0xFF4B2C5E),
          size: 45,
        ),
      ],
    );
  }

  Widget _buildRamadanButton(
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
