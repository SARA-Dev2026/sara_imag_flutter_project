import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/extra_task_controller.dart';

class IslamicEtiquettesView extends GetView<ExtraTaskController> {
  const IslamicEtiquettesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5DC), // Cream background
      appBar: AppBar(
        title: const Text(
          "آداب إسلامية",
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
            _buildEtiquetteButton(
              context,
              icon: Icons.menu_book,
              text: "الأدب مع الله",
              onTap: () => controller.navigateToAdabWithAllah(),
            ),
            const SizedBox(height: 15),
            _buildEtiquetteButton(
              context,
              icon: Icons.menu_book,
              text: "الأدب مع الوالدين",
              onTap: () => controller.navigateToAdabWithParents(),
            ),
            const SizedBox(height: 15),
            _buildEtiquetteButton(
              context,
              icon: Icons.menu_book,
              text: "آداب المساجد",
              onTap: () => controller.navigateToMosqueAdab(),
            ),
            const SizedBox(height: 15),
            _buildEtiquetteButton(
              context,
              icon: Icons.menu_book,
              text: "آداب الطريق",
              onTap: () => controller.navigateToRoadAdab(),
            ),
            const SizedBox(height: 15),
            _buildEtiquetteButton(
              context,
              icon: Icons.menu_book,
              text: "آداب المجالس",
              onTap: () => controller.navigateToGatheringsAdab(),
            ),
            const SizedBox(height: 15),
            _buildEtiquetteButton(
              context,
              icon: Icons.menu_book,
              text: "آداب الحجة",
              onTap: () => controller.navigateToHajjAdab(),
            ),
            const SizedBox(height: 15),
            _buildEtiquetteButton(
              context,
              icon: Icons.menu_book,
              text: "آداب الذكر",
              onTap: () => controller.navigateToZikrAdab(),
            ),
            const SizedBox(height: 15),
            _buildEtiquetteButton(
              context,
              icon: Icons.menu_book,
              text: "آداب الحجة",
              onTap: () => controller.navigateToDebateAdab(),
            ),
            const SizedBox(height: 15),
            _buildEtiquetteButton(
              context,
              icon: Icons.menu_book,
              text: "آداب الذكر",
              onTap: () => controller.navigateToRemembranceAdab(),
            ),
            const SizedBox(height: 15),
            _buildEtiquetteButton(
              context,
              icon: Icons.menu_book,
              text: "آداب السفر",
              onTap: () => controller.navigateToTravelAdab(),
            ),
            const SizedBox(height: 15),
            _buildEtiquetteButton(
              context,
              icon: Icons.menu_book,
              text: "آداب الجهل",
              onTap: () => controller.navigateToIgnoranceAdab(),
            ),
            const SizedBox(height: 15),
            _buildEtiquetteButton(
              context,
              icon: Icons.menu_book,
              text: "آداب الأبناد",
              onTap: () => controller.navigateToChildrenAdab(),
            ),
            const SizedBox(height: 15),
            _buildEtiquetteButton(
              context,
              icon: Icons.menu_book,
              text: "آداب الطعام والشراب",
              onTap: () => controller.navigateToFoodDrinkAdab(),
            ),
            const SizedBox(height: 15),
            _buildEtiquetteButton(
              context,
              icon: Icons.menu_book,
              text: "آداب قضاء الحاجة",
              onTap: () => controller.navigateToToiletAdab(),
            ),
            const SizedBox(height: 15),
            _buildEtiquetteButton(
              context,
              icon: Icons.menu_book,
              text: "آداب النوم",
              onTap: () => controller.navigateToSleepAdab(),
            ),
            const SizedBox(height: 15),
            _buildEtiquetteButton(
              context,
              icon: Icons.menu_book,
              text: "آداب الناس",
              onTap: () => controller.navigateToPeopleAdab(),
            ),
            const SizedBox(height: 15),
            _buildEtiquetteButton(
              context,
              icon: Icons.menu_book,
              text: "آداب الصلح",
              onTap: () => controller.navigateToPeaceAdab(),
            ),
            const SizedBox(height: 15),
            _buildEtiquetteButton(
              context,
              icon: Icons.menu_book,
              text: "آداب محافظة الحيوان",
              onTap: () => controller.navigateToAnimalCareAdab(),
            ),
            const SizedBox(height: 15),
            _buildEtiquetteButton(
              context,
              icon: Icons.menu_book,
              text: "آداب الرياضة",
              onTap: () => controller.navigateToSportsAdab(),
            ),
            const SizedBox(height: 15),
            _buildEtiquetteButton(
              context,
              icon: Icons.menu_book,
              text: "آداب الرياقة",
              onTap: () => controller.navigateToEleganceAdab(),
            ),
            const SizedBox(height: 15),
            _buildEtiquetteButton(
              context,
              icon: Icons.menu_book,
              text: "آداب رياية الملابس",
              onTap: () => controller.navigateToClothingAdab(),
            ),
            const SizedBox(height: 15),
            _buildEtiquetteButton(
              context,
              icon: Icons.menu_book,
              text: "آداب الجمال",
              onTap: () => controller.navigateToBeautyAdab(),
            ),
            const SizedBox(height: 15),
            _buildEtiquetteButton(
              context,
              icon: Icons.menu_book,
              text: "آداب الطهر",
              onTap: () => controller.navigateToPurityAdab(),
            ),
            const SizedBox(height: 15),
            _buildEtiquetteButton(
              context,
              icon: Icons.menu_book,
              text: "آداب الصحيح",
              onTap: () => controller.navigateToHealthAdab(),
            ),
            const SizedBox(height: 15),
            _buildEtiquetteButton(
              context,
              icon: Icons.menu_book,
              text: "آداب الدعوة",
              onTap: () => controller.navigateToDawahAdab(),
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }

  Widget _buildEtiquetteButton(
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
