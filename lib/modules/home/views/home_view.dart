import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../routes/app_routes.dart';
import '../../../core/controllers/language_controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {



  @override
  Widget build(BuildContext context) {
    // Drawer items data
    final List<Map<String, dynamic>> drawerItems = [
      {'icon': Icons.home, 'title': 'home'.tr},
      {'icon': Icons.store, 'title': 'store'.tr},
      {'icon': Icons.person_add, 'title': 'student_affairs'.tr},
      {'icon': Icons.image, 'title': 'image_task'.tr},
      {'icon': Icons.assignment, 'title': 'extra_task'.tr},
      {'icon': Icons.info, 'title': 'about_app'.tr},
      {'icon': Icons.book, 'title': 'quran'.tr},
      {'icon': Icons.nightlight_round, 'title': 'ramadan'.tr},
      {'icon': Icons.language, 'title': 'change_language'.tr},
      {'icon': Icons.exit_to_app, 'title': 'exit'.tr},
    ];

    // Main screen buttons data
    final List<String> mainButtons = [
      "store".tr,
      "student_affairs".tr,
      "image_task".tr,
      "extra_task".tr,
      "quran".tr,
      "athkar".tr,
      "supplications".tr,
      "tasbih".tr,
      "ruqyah".tr,
      "ramadan".tr,
      "islamic_gallery".tr,
      "allah_names".tr,
      "islamic_etiquette".tr,
      "keys_to_relief".tr,
      "about_app".tr,
    ];

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.white, size: 30),
      ),
      drawer: Drawer(
        child: Container(
          color: const Color(0xFFF5F5DC), // Cream background for drawer body
          child: Column(
            children: [
              // Drawer Header
              Container(
                width: double.infinity,
                padding: const EdgeInsets.only(top: 50, bottom: 20),
                decoration: const BoxDecoration(
                  color: Color(0xFF4B2C5E), // Purple background for header
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Start Logo
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.white, width: 2),
                        image: const DecorationImage(
                          image: AssetImage('assets/images/logo.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      "be_with_allah".tr,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              // Drawer Items
              Expanded(
                child: ListView.separated(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  itemCount: drawerItems.length,
                  separatorBuilder: (context, index) => const Divider(
                    color: Color(0xFF4B2C5E),
                    thickness: 0.5,
                    indent: 20,
                    endIndent: 20,
                  ),
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: Icon(
                        drawerItems[index]['icon'],
                        color: const Color(0xFF4B2C5E),
                      ),
                      title: Text(
                        drawerItems[index]['title'],
                        style: const TextStyle(
                          color: Color(0xFF4B2C5E),
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      trailing: index == 0
                          ? const Icon(
                              Icons.arrow_forward_ios,
                              size: 16,
                              color: Color(0xFF4B2C5E),
                            )
                          : null,
                      onTap: () {
                        Get.back(); // Close drawer
                        String title = drawerItems[index]['title'];
                        if (title == "store".tr) {
                          Get.toNamed(Routes.STORE);
                        } else if (title == "student_affairs".tr) {
                          Get.toNamed(Routes.STUDENT_AFFAIRS);
                        } else if (title == "image_task".tr) {
                          Get.toNamed(Routes.IMAGE_TASK);
                        } else if (title == "extra_task".tr) {
                          Get.toNamed(Routes.EXTRA_TASK);
                        } else if (title == "quran".tr) {
                          Get.toNamed(Routes.QURAN);
                        } else if (title == "exit".tr) {
                          Get.offAllNamed(Routes.LOGIN);
                        } else if (title == 'change_language'.tr) {
                          LanguageController controller = Get.find();
                          if (Get.locale?.languageCode == 'ar') {
                            controller.changeLang('en');
                          } else {
                            controller.changeLang('ar');
                          }
                        }
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      body: Stack(
        children: [
          // 1. Background Image
          Positioned.fill(
            child: Image.asset(
              'assets/images/background.png',
              fit: BoxFit.cover,
            ),
          ),

          // 2. Overlay
          Positioned.fill(
            child: Container(
              color: const Color(
                0xFFF5F5DC,
              ).withValues(alpha: 0.3), // Cream tint
            ),
          ),

          // 3. Side Decorations
          Positioned(
            left: 10,
            top: 100,
            bottom: 50,
            child: const SizedBox(
              width: 20,
              child: VerticalDivider(
                color: Color(0xFF4B2C5E),
                thickness: 2,
                indent: 20,
                endIndent: 20,
              ),
            ),
          ),
          Positioned(
            right: 10,
            top: 100,
            bottom: 50,
            child: const SizedBox(
              width: 20,
              child: VerticalDivider(
                color: Color(0xFF4B2C5E),
                thickness: 2,
                indent: 20,
                endIndent: 20,
              ),
            ),
          ),

          // 4. Custom Header Shape (Purple background)
          ClipPath(
            clipper: HeaderClipper(),
            child: Container(height: 250, color: const Color(0xFF4B2C5E)),
          ),

          // 5. Content
          Column(
            children: [
              const SizedBox(height: 100), // Adjusted for logo placement
              Center(
                child: Container(
                  width: 180,
                  height: 180,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withValues(alpha: 0.3),
                        blurRadius: 15,
                        offset: const Offset(0, 8),
                      ),
                    ],
                  ),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      // Ornate Background Circle (Simulated)
                      Container(
                        width: 180,
                        height: 180,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: const Color(0xFFF5F5DC),
                          border: Border.all(
                            color: const Color(0xFFD4AF37),
                            width: 2,
                          ),
                        ),
                        child: const Icon(
                          Icons.settings_suggest, // Placeholder ornament
                          size: 160,
                          color: Color(0xFF4B2C5E),
                        ),
                      ),
                      // Actual Logo
                      Container(
                        width: 140,
                        height: 140,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.white, width: 3),
                          image: const DecorationImage(
                            image: AssetImage('assets/images/logo.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 20),

              // List of Buttons
              Expanded(
                child: ListView.builder(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 40,
                    vertical: 10,
                  ),
                  itemCount: mainButtons.length,
                  itemBuilder: (context, index) {
                    final String btnText = mainButtons[index];
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 15),
                      child: IslamicButton(
                        text: btnText,
                        onPressed: () {
                          if (btnText == "islamic_etiquette".tr) {
                             Get.toNamed(Routes.ISLAMIC_ETIQUETTE);
                          } else if (btnText == "keys_to_relief".tr) {
                             Get.toNamed(Routes.KEYS_TO_RELIEF);
                          } else if (btnText == "about_app".tr) {
                             Get.toNamed(Routes.ABOUT_APP);
                          } else if (btnText == "image_task".tr) {
                            Get.toNamed(Routes.IMAGE_TASK);
                          } else if (btnText == "student_affairs".tr) {
                            Get.toNamed(Routes.STUDENT_AFFAIRS);
                          } else if (btnText == "store".tr) {
                            Get.toNamed(Routes.STORE);
                          } else if (btnText == "extra_task".tr) {
                            Get.toNamed(Routes.EXTRA_TASK);
                          } else if (btnText == "quran".tr) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text("opening_quran".tr)),
                            );
                            Get.toNamed(Routes.QURAN);
                          } else if (btnText == "athkar".tr) {
                            Get.toNamed(Routes.AZKAR);
                          } else if (btnText == "supplications".tr) {
                            Get.toNamed(Routes.SUPPLICATIONS);
                          } else if (btnText == "tasbih".tr) {
                            Get.toNamed(Routes.TASBIH);
                          } else if (btnText == "ruqyah".tr) {
                            Get.toNamed(Routes.RUQYAH);
                          } else if (btnText == "ramadan".tr) {
                            Get.toNamed(Routes.RAMADAN);
                          } else if (btnText == "islamic_gallery".tr) {
                            Get.toNamed(Routes.ISLAMIC_GALLERY);
                          } else if (btnText == "allah_names".tr) {
                            Get.toNamed(Routes.ALLAH_NAMES);
                          }
                        },
                      ),
                    );
                  },
                ),
              ),
              // Sequential Navigation Buttons
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton.icon(
                      onPressed: () {
                        Get.offAllNamed(Routes.LOGIN);
                      },
                      icon: const Icon(Icons.arrow_back),
                      label: Text("back_login".tr),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF4B2C5E),
                        foregroundColor: Colors.white,
                      ),
                    ),
                    ElevatedButton.icon(
                      onPressed: () {
                        Get.toNamed(Routes.QURAN);
                      },
                      label: Text("next_quran".tr),
                      icon: const Icon(Icons.arrow_forward),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF4B2C5E),
                        foregroundColor: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class IslamicButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final bool isExpandable;
  final bool isExpanded;
  final bool isSubButton;
  
  const IslamicButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.isExpandable = false,
    this.isExpanded = false,
    this.isSubButton = false,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onPressed,
        borderRadius: BorderRadius.circular(15),
        child: Container(
          height: isSubButton ? 55 : 60,
          decoration: BoxDecoration(
            color: const Color(0xFF4B2C5E),
            borderRadius: BorderRadius.circular(15),
            boxShadow: const [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 5,
                offset: Offset(0, 3),
              ),
            ],
          ),
          child: Stack(
            alignment: Alignment.center,
            children: [
              // Decorative Icons - Wrapped in IgnorePointer
              IgnorePointer(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Icon(
                        Icons.spa,
                        color: Colors.white.withValues(alpha: 0.2),
                        size: 40,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Icon(
                        Icons.spa,
                        color: Colors.white.withValues(alpha: 0.2),
                        size: 40,
                      ),
                    ),
                  ],
                ),
              ),

              // Main Content Row
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Expandable arrow indicator (left side)
                    if (isExpandable)
                      AnimatedRotation(
                        turns: isExpanded ? 0.25 : 0.75,
                        duration: const Duration(milliseconds: 300),
                        child: const Icon(
                          Icons.arrow_back_ios,
                          color: Colors.white,
                          size: 20,
                        ),
                      )
                    else
                      const SizedBox(width: 20),
                    
                    // Main Text
                    Expanded(
                      child: Text(
                        text,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: isSubButton ? 17 : 20,
                          fontWeight: FontWeight.bold,
                          shadows: const [
                            Shadow(
                              blurRadius: 2.0,
                              color: Colors.black,
                              offset: Offset(1.0, 1.0),
                            ),
                          ],
                        ),
                      ),
                    ),
                    
                    const SizedBox(width: 20),
                  ],
                ),
              ),

              // Inner Border Effect - Wrapped in IgnorePointer
              Positioned(
                top: 5,
                bottom: 5,
                left: 20,
                right: 20,
                child: IgnorePointer(
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border(
                        top: BorderSide(
                          color: Colors.white.withValues(alpha: 0.3),
                          width: 1,
                        ),
                        bottom: BorderSide(
                          color: Colors.white.withValues(alpha: 0.3),
                          width: 1,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class HeaderClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height - 80);
    path.quadraticBezierTo(
      size.width / 2,
      size.height - 150,
      size.width,
      size.height - 80,
    );
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
