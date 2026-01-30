import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/extra_task_controller.dart';

class AboutAppView extends GetView<ExtraTaskController> {
  const AboutAppView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5DC), // Cream background
      appBar: AppBar(
        title: const Text(
          "عن التطبيق",
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
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            // Logo Section
            Center(
              child: Container(
                width: 120,
                height: 120,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: const Color(0xFF4B2C5E), width: 3),
                  image: const DecorationImage(
                    image: AssetImage('assets/images/logo.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),

            // Description Text Container
            Container(
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: const Color(0xFF4B2C5E),
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withValues(alpha: 0.2),
                    blurRadius: 5,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: const Text(
                "تطبيق كن مع الله .. هو طريق للتقرب إلى الله ..\n\n"
                "يتميز التطبيق عن غيره من التطبيقات المشابهة بأنه .. الأكثر محتوى - الأقل حجماً - الأجمل تصميماً وبدون إعلانات مزعجة. هذا التطبيق به قسم خاص بالقرآن الكريم ( صوت وكتابة ) كما يمكنكم الضغط على أي آية في المصحف لسماعها و يوجد قسم خاص بالأذكار تم تصميمه وبرمجته ليعمل بشكل ذكي وسهل في الإستخدام . ويتميز التطبيق بإمكانية إضافة أذكارك وأدعيتك الخاصه والإحتفاظ بها ضمن التطبيق ويوجد قسم خاص بشهر رمضان الكريم والأدعية والرقية الشرعية ومفاتيح الفرج والآداب الإسلامية و أسماء الله الحسنى والمعرض الإسلامي الذي يحتوى على مجموعة كبيرة من الصور وكروت التهنئة والمعايدة التى تستطيع ان ترسلها وتشاركها مع أصدقائك.. كما يوجد قسم خاص بالتسابيح والكثير من المميزات .\n\n"
                "نسألكم الدعاء بظهر الغيب لنا ولكم وللمسلمين ..",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  height: 1.5,
                ),
              ),
            ),
            const SizedBox(height: 20),

            // Action Buttons
            _buildActionButton(
              icon: Icons.star_rate,
              label: "لا تنسى تقييم التطبيق",
              onTap: () => controller.rateApp(),
            ),
            const SizedBox(height: 10),
            _buildActionButton(
              icon: Icons.message,
              label: "ارسل لنا اقتراحك",
              onTap: () => controller.sendSuggestion(),
            ),
            const SizedBox(height: 10),
            _buildActionButton(
              icon: Icons.facebook,
              label: "تابعونا على الصفحة الرسمية",
              onTap: () => controller.openFacebookPage(),
            ),
            const SizedBox(height: 10),
            _buildActionButton(
              icon: Icons.volunteer_activism,
              label: "صدقة جارية",
              onTap: () => controller.ongoingCharity(),
            ),
            const SizedBox(height: 10),
            _buildActionButton(
              icon: Icons.share,
              label: "انشر التطبيق الان",
              onTap: () => controller.shareApp(),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget _buildActionButton({
    required IconData icon,
    required String label,
    required VoidCallback onTap,
  }) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(30),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        decoration: BoxDecoration(
          color: const Color(0xFF4B2C5E),
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.2),
              blurRadius: 4,
              offset: const Offset(0, 2),
            ),
          ],
          border: Border.all(color: Colors.white.withValues(alpha: 0.1)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(width: 24), // Spacer for centering text
            Text(
              label,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            Icon(icon, color: Colors.white),
          ],
        ),
      ),
    );
  }
}
