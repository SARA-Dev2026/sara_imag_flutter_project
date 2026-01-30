import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/extra_task_controller.dart';

class AllahNamesView extends GetView<ExtraTaskController> {
  const AllahNamesView({super.key});

  // 99 أسماء الله الحسنى
  static const List<String> allahNames = [
    'الله', 'الرحمن', 'الرحيم', 'الملك', 'القدوس', 'السلام',
    'المؤمن', 'المهيمن', 'العزيز', 'الجبار', 'المتكبر', 'الخالق',
    'البارئ', 'المصور', 'الغفار', 'القهار', 'الوهاب', 'الرزاق',
    'الفتاح', 'العليم', 'القابض', 'الباسط', 'الخافض', 'الرافع',
    'المعز', 'المذل', 'السميع', 'البصير', 'الحكم', 'العدل',
    'اللطيف', 'الخبير', 'الحليم', 'العظيم', 'الغفور', 'الشكور',
    'العلي', 'الكبير', 'الحفيظ', 'المقيت', 'الحسيب', 'الجليل',
    'الكريم', 'الرقيب', 'المجيب', 'الواسع', 'الحكيم', 'الودود',
    'المجيد', 'الباعث', 'الشهيد', 'الحق', 'الوكيل', 'القوي',
    'المتين', 'الولي', 'الحميد', 'المحصي', 'المبدئ', 'المعيد',
    'المحيي', 'المميت', 'الحي', 'القيوم', 'الواجد', 'الماجد',
    'الواحد', 'الأحد', 'الصمد', 'القادر', 'المقتدر', 'المقدم',
    'المؤخر', 'الأول', 'الآخر', 'الظاهر', 'الباطن', 'الوالي',
    'المتعالي', 'البر', 'التواب', 'المنتقم', 'العفو', 'الرؤوف',
    'مالك الملك', 'ذو الجلال والإكرام', 'المقسط', 'الجامع', 'الغني', 'المغني',
    'المانع', 'الضار', 'النافع', 'النور', 'الهادي', 'البديع',
    'الباقي', 'الوارث', 'الرشيد', 'الصبور'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5DC), // Cream background
      appBar: AppBar(
        title: const Text(
          "أسماء الله الحسنى",
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
      body: Column(
        children: [
          // Header with Allah name
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 30),
            decoration: BoxDecoration(
              color: const Color(0xFFF5F5DC),
              border: Border(
                bottom: BorderSide(
                  color: const Color(0xFF4B2C5E).withValues(alpha: 0.2),
                  width: 1,
                ),
              ),
            ),
            child: const Column(
              children: [
                Text(
                  'ﷲ',
                  style: TextStyle(
                    fontSize: 80,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF4B2C5E),
                    fontFamily: 'Arial',
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'التسعة والتسعون اسماً',
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0xFF4B2C5E),
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          
          // Grid of Names
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.all(20),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 12,
                mainAxisSpacing: 12,
                childAspectRatio: 1.1,
              ),
              itemCount: allahNames.length,
              itemBuilder: (context, index) {
                return _buildNameCard(allahNames[index], index + 1);
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildNameCard(String name, int number) {
    return InkWell(
      onTap: () {
        Get.snackbar(
          name,
          'اسم الله: $name',
          snackPosition: SnackPosition.BOTTOM,
          duration: const Duration(seconds: 2),
        );
      },
      borderRadius: BorderRadius.circular(15),
      child: Container(
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [
              Color(0xFF5E3A6E),
              Color(0xFF6B4778),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.2),
              blurRadius: 6,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: Stack(
          children: [
            // Number badge
            Positioned(
              top: 5,
              left: 5,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  color: Colors.white.withValues(alpha: 0.2),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  '$number',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            // Name in center
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  name,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Arial',
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
