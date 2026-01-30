import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/extra_task_controller.dart';

class RuqyahView extends GetView<ExtraTaskController> {
  const RuqyahView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5DC), // Cream background
      appBar: AppBar(
        title: const Text(
          "الرقية الشرعية",
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
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          children: [
            // Audio Player
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              decoration: BoxDecoration(
                color: const Color(0xFFD3D3D3),
                borderRadius: BorderRadius.circular(30),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withValues(alpha: 0.1),
                    blurRadius: 5,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: Row(
                children: [
                  IconButton(
                    icon: const Icon(Icons.play_arrow, color: Colors.black54),
                    onPressed: () {
                      // Play audio
                    },
                  ),
                  const Text(
                    "0:00 / 0:00",
                    style: TextStyle(color: Colors.black54, fontSize: 12),
                  ),
                  Expanded(
                    child: Slider(
                      value: 0.0,
                      min: 0.0,
                      max: 100.0,
                      activeColor: const Color(0xFF4B2C5E),
                      inactiveColor: Colors.grey.shade400,
                      onChanged: (value) {
                        // Handle slider
                      },
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.volume_up, color: Colors.black54),
                    onPressed: () {
                      // Volume control
                    },
                  ),
                  IconButton(
                    icon: const Icon(Icons.more_vert, color: Colors.black54),
                    onPressed: () {
                      // More options
                    },
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            
            // Buttons
            _buildRuqyahButton(
              context,
              icon: Icons.person_outline,
              text: "إرشادات عامة يجب أن تراعى عند الرقية",
              onTap: () => controller.navigateToRuqyahGuidelines(),
            ),
            const SizedBox(height: 15),
            _buildRuqyahButton(
              context,
              icon: Icons.person_outline,
              text: "الرقية الشرعية من القرآن الكريم",
              onTap: () => controller.navigateToQuranRuqyah(),
            ),
            const SizedBox(height: 15),
            _buildRuqyahButton(
              context,
              icon: Icons.person_outline,
              text: "الرقية الشرعية من السنة",
              onTap: () => controller.navigateToSunnahRuqyah(),
            ),
            const SizedBox(height: 15),
            _buildRuqyahButton(
              context,
              icon: Icons.person_outline,
              text: "رقية التحصين",
              onTap: () => controller.navigateToProtectionRuqyah(),
            ),
            const SizedBox(height: 15),
            _buildRuqyahButton(
              context,
              icon: Icons.person_outline,
              text: "رقية آيات الشفاء",
              onTap: () => controller.navigateToHealingVersesRuqyah(),
            ),
            const SizedBox(height: 15),
            _buildRuqyahButton(
              context,
              icon: Icons.person_outline,
              text: "رقية آيات الحفظ",
              onTap: () => controller.navigateToPreservationVersesRuqyah(),
            ),
            const SizedBox(height: 15),
            _buildRuqyahButton(
              context,
              icon: Icons.person_outline,
              text: "رقية آيات السكينة و الاطمئنان",
              onTap: () => controller.navigateToTranquilityVersesRuqyah(),
            ),
            const SizedBox(height: 15),
            _buildRuqyahButton(
              context,
              icon: Icons.person_outline,
              text: "رقية الأطفال",
              onTap: () => controller.navigateToChildrenRuqyah(),
            ),
            const SizedBox(height: 15),
            _buildRuqyahButton(
              context,
              icon: Icons.person_outline,
              text: "رقية لتيسير الأمور المتعسرة",
              onTap: () => controller.navigateToEaseMattersRuqyah(),
            ),
            const SizedBox(height: 15),
            _buildRuqyahButton(
              context,
              icon: Icons.person_outline,
              text: "رقية لتيسير تسهيل الولادة",
              onTap: () => controller.navigateToChildbirthRuqyah(),
            ),
            const SizedBox(height: 15),
            _buildRuqyahButton(
              context,
              icon: Icons.person_outline,
              text: "رقية لاستقرار الضغط والسكر وضربات القلب",
              onTap: () => controller.navigateToBloodPressureSugarRuqyah(),
            ),
            const SizedBox(height: 15),
            _buildRuqyahButton(
              context,
              icon: Icons.person_outline,
              text: "رقية لأمراض الجهاز التنفسي و الزكيف",
              onTap: () => controller.navigateToRespiratoryRuqyah(),
            ),
            const SizedBox(height: 15),
            _buildRuqyahButton(
              context,
              icon: Icons.person_outline,
              text: "دعاء التحصين",
              onTap: () => controller.navigateToProtectionSupplication(),
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }

  Widget _buildRuqyahButton(
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
