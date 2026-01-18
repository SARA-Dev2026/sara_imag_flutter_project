import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'home_view.dart';

class Surah {
  final String name;
  final int verses;
  final String type; // 'مكية' or 'مدنية'

  Surah({required this.name, required this.verses, required this.type});
}

class QuranView extends StatelessWidget {
  const QuranView({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Surah> surahs = [
      Surah(name: "الفَاتِحَة", verses: 7, type: "مكية"),
      Surah(name: "البَقَرَة", verses: 286, type: "مدنية"),
      Surah(name: "آل عِمرَان", verses: 200, type: "مدنية"),
      Surah(name: "النِّسَاء", verses: 176, type: "مدنية"),
      Surah(name: "المَائدة", verses: 120, type: "مدنية"),
      Surah(name: "الأنعَام", verses: 165, type: "مكية"),
      Surah(name: "الأعرَاف", verses: 206, type: "مكية"),
      Surah(name: "الأنفَال", verses: 75, type: "مدنية"),
      Surah(name: "التوبَة", verses: 129, type: "مدنية"),
      Surah(name: "يُونس", verses: 109, type: "مكية"),
      Surah(name: "هُود", verses: 123, type: "مكية"),
      Surah(name: "يُوسُف", verses: 111, type: "مكية"),
      Surah(name: "الرَّعْد", verses: 43, type: "مدنية"),
      Surah(name: "إبراهيم", verses: 52, type: "مكية"),
      Surah(name: "الحِجْر", verses: 99, type: "مكية"),
      Surah(name: "النَّحْل", verses: 128, type: "مكية"),
      Surah(name: "الإسْرَاء", verses: 111, type: "مكية"),
      Surah(name: "الكهْف", verses: 110, type: "مكية"),
      Surah(name: "مَريم", verses: 98, type: "مكية"),
      Surah(name: "طه", verses: 135, type: "مكية"),
      Surah(name: "الأنبياء", verses: 112, type: "مكية"),
      Surah(name: "الحَجّ", verses: 78, type: "مدنية"),
      Surah(name: "المُؤمنون", verses: 118, type: "مكية"),
      Surah(name: "النُّور", verses: 64, type: "مدنية"),
      Surah(name: "الفُرْقان", verses: 77, type: "مكية"),
      Surah(name: "الشُّعَرَاء", verses: 227, type: "مكية"),
      Surah(name: "النَّمْل", verses: 93, type: "مكية"),
      Surah(name: "القَصَص", verses: 88, type: "مكية"),
      Surah(name: "العَنْكَبُوت", verses: 69, type: "مكية"),
      Surah(name: "الرُّوم", verses: 60, type: "مكية"),
      Surah(name: "لُقْمَان", verses: 34, type: "مكية"),
      Surah(name: "السَّجْدَة", verses: 30, type: "مكية"),
      Surah(name: "الأحْزَاب", verses: 73, type: "مدنية"),
    ];

    return Scaffold(
      backgroundColor: const Color(0xFF4B2C5E),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 200,
            floating: false,
            pinned: true,
            backgroundColor: const Color(0xFF4B2C5E),
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                "quran".tr,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              background: Stack(
                fit: StackFit.expand,
                children: [
                  Image.asset(
                    'assets/images/background.png',
                    fit: BoxFit.cover,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.transparent,
                          const Color(0xFF4B2C5E).withValues(alpha: 0.8),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate((context, index) {
              final surah = surahs[index];
              return Container(
                margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                decoration: BoxDecoration(
                  color: Colors.white.withValues(alpha: 0.1),
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(
                    color: Colors.amber.withValues(alpha: 0.3),
                    width: 1,
                  ),
                ),
                child: ListTile(
                  contentPadding: const EdgeInsets.all(12),
                  leading: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.amber.withValues(alpha: 0.2),
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: Text(
                        "${index + 1}",
                        style: const TextStyle(
                          color: Colors.amber,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  title: Text(
                    surah.name,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                    "${surah.type} - ${surah.verses} آيات",
                    style: const TextStyle(color: Colors.white70),
                  ),
                  trailing: const Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.amber,
                    size: 18,
                  ),
                  onTap: () {
                    // Navigate to Surah detail
                  },
                ),
              );
            }, childCount: surahs.length),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(16),
        decoration: const BoxDecoration(
          color: Color(0xFF4B2C5E),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 10,
              offset: Offset(0, -2),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ElevatedButton.icon(
              onPressed: () => Get.back(),
              icon: const Icon(Icons.arrow_back),
              label: Text("back".tr),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.amber,
                foregroundColor: const Color(0xFF4B2C5E),
              ),
            ),
            ElevatedButton.icon(
              onPressed: () => Get.to(() => const Homee()),
              icon: const Icon(Icons.store),
              label: Text("next_store".tr),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.amber,
                foregroundColor: const Color(0xFF4B2C5E),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
