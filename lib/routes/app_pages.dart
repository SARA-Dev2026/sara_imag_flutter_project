import 'package:get/get.dart';
// ignore_for_file: constant_identifier_names
import '../modules/login/views/login_view.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/quran/views/quran_view.dart';
import '../modules/quran/bindings/quran_binding.dart';
import '../modules/image_task/views/image_task_view.dart';
import '../modules/image_task/bindings/image_task_binding.dart';
import '../modules/student_affairs/views/student_features_view.dart';
import '../modules/student_affairs/bindings/student_affairs_binding.dart';
import '../modules/extra_task/views/ss_view.dart';
import '../modules/extra_task/views/azkar_view.dart';
import '../modules/extra_task/views/supplications_view.dart';
import '../modules/extra_task/views/tasbih_view.dart';
import '../modules/extra_task/views/ruqyah_view.dart';
import '../modules/extra_task/views/ramadan_view.dart';
import '../modules/extra_task/views/islamic_gallery_view.dart';
import '../modules/extra_task/views/allah_names_view.dart';
import '../modules/extra_task/views/islamic_etiquettes_view.dart';
import '../modules/extra_task/views/keys_to_relief_view.dart';
import '../modules/extra_task/views/about_app_view.dart';
import '../modules/extra_task/bindings/extra_task_binding.dart';
import '../modules/store/views/store_view.dart';
import '../modules/store/bindings/store_binding.dart';
import 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.LOGIN;

  static final routes = [
    GetPage(
      name: Routes.LOGIN,
      page: () => const LoginPage(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: Routes.HOME,
      page: () => const HomePage(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: Routes.QURAN,
      page: () => const QuranView(),
      binding: QuranBinding(),
    ),
    GetPage(
      name: Routes.IMAGE_TASK,
      page: () => const ImageTaskScreen(),
      binding: ImageTaskBinding(),
    ),
    GetPage(
      name: Routes.STUDENT_AFFAIRS,
      page: () => const AddStudent(),
      binding: StudentAffairsBinding(),
    ),
    GetPage(
      name: Routes.EXTRA_TASK,
      page: () => const MyTask(),
      binding: ExtraTaskBinding(),
    ),
    GetPage(
      name: Routes.STORE,
      page: () => const StoreView(),
      binding: StoreBinding(),
    ),
    GetPage(
      name: Routes.AZKAR,
      page: () => const AzkarView(),
      binding: ExtraTaskBinding(),
    ),
    GetPage(
      name: Routes.SUPPLICATIONS,
      page: () => const SupplicationsView(),
      binding: ExtraTaskBinding(),
    ),
    GetPage(
      name: Routes.TASBIH,
      page: () => const TasbihView(),
      binding: ExtraTaskBinding(),
    ),
    GetPage(
      name: Routes.RUQYAH,
      page: () => const RuqyahView(),
      binding: ExtraTaskBinding(),
    ),
    GetPage(
      name: Routes.RAMADAN,
      page: () => const RamadanView(),
      binding: ExtraTaskBinding(),
    ),
    GetPage(
      name: Routes.ISLAMIC_GALLERY,
      page: () => const IslamicGalleryView(),
      binding: ExtraTaskBinding(),
    ),
    GetPage(
      name: Routes.ALLAH_NAMES,
      page: () => const AllahNamesView(),
      binding: ExtraTaskBinding(),
    ),
    GetPage(
      name: Routes.ISLAMIC_ETIQUETTE,
      page: () => const IslamicEtiquettesView(),
      binding: ExtraTaskBinding(),
    ),
    GetPage(
      name: Routes.KEYS_TO_RELIEF,
      page: () => const KeysToReliefView(),
      binding: ExtraTaskBinding(),
    ),
    GetPage(
      name: Routes.ABOUT_APP,
      page: () => const AboutAppView(),
      binding: ExtraTaskBinding(),
    ),
  ];
}
