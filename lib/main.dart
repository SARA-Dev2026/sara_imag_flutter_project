import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'core/localization/locale.dart';
import 'core/controllers/language_controller.dart';
import 'core/bindings/app_binding.dart';
import 'routes/app_pages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(LanguageController());
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Islamic App',
      translations: MyLocale(),
      locale: Get.deviceLocale?.languageCode == 'ar'
          ? const Locale('ar')
          : const Locale('en'),
      fallbackLocale: const Locale('en'),
      initialBinding: AppBinding(),
      theme: ThemeData(
        primaryColor: const Color(0xFF4B2C5E),
        scaffoldBackgroundColor: const Color(0xFFF5F5DC),
        textTheme: GoogleFonts.cairoTextTheme(Theme.of(context).textTheme),
        useMaterial3: true,
      ),
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    );
  }
}
