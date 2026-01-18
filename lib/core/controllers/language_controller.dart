import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LanguageController extends GetxController {
  // Initialize language from shared preferences
  @override
  void onInit() {
    super.onInit();
    _loadLang();
  }

  void _loadLang() async {
    SharedPreferences delete = await SharedPreferences.getInstance();
    String? lang = delete.getString("lang");
    if (lang != null) {
      Get.updateLocale(Locale(lang));
    } else {
      Get.updateLocale(const Locale('ar'));
    }
  }

  void changeLang(String langcode) async {
    Locale locale = Locale(langcode);
    SharedPreferences delete = await SharedPreferences.getInstance();
    await delete.setString("lang", langcode);
    Get.updateLocale(locale);
  }
}
