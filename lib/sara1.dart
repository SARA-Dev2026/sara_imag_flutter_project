import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:google_fonts/google_fonts.dart';
import 'login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Islamic App',
      theme: ThemeData(
        primaryColor: const Color(0xFF4B2C5E),
        scaffoldBackgroundColor: const Color(0xFFF5F5DC),
        textTheme: GoogleFonts.cairoTextTheme(Theme.of(context).textTheme),
        useMaterial3: true,
      ),
      // RTL Support
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('ar', 'AE'), // Arabic
      ],
      locale: const Locale('ar', 'AE'),
      home: const LoginPage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // Drawer items data
    final List<Map<String, dynamic>> drawerItems = [
      {'icon': Icons.home, 'title': 'الرئيسية'},
      {'icon': Icons.info, 'title': 'عن التطبيق'},
      {'icon': Icons.book, 'title': 'القرآن الكريم'},
      {'icon': Icons.nightlight_round, 'title': 'رمضانيات'},
      {'icon': Icons.favorite, 'title': 'أذكاري الخاصة'},
      {'icon': Icons.favorite_border, 'title': 'أدعيتي الخاصة'},
      {'icon': Icons.timer, 'title': 'سبحتي الخاصة'},
      {'icon': Icons.volunteer_activism, 'title': 'صدقة جارية'},
      {'icon': Icons.card_giftcard, 'title': 'اهداء'},
      {'icon': Icons.code, 'title': 'مطور التطبيق'},
      {'icon': Icons.star, 'title': 'تقييم التطبيق'},
      {'icon': Icons.share, 'title': 'انشر التطبيق'},
      {'icon': Icons.exit_to_app, 'title': 'خروج'},
    ];

    // Main screen buttons data
    final List<String> mainButtons = [
      "القرآن الكريم",
      "أذكار",
      "أدعية",
      "تسابيح",
      "الرقية الشرعية",
      "رمضانيات",
      "المعرض الإسلامي",
      "أسماء الله الحسنى",
      "آداب إسلامية",
      "مفاتيح الفرج",
      "عن التطبيق",
    ];

    return Scaffold(
      // Custom App Bar using Stack if needed, or transparent AppBar to show background
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
                          image: AssetImage(
                            'assets/images/logo.png',
                          ), // Ensure logo.png exists
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "كن مع الله\nيكن الله معك",
                      textAlign: TextAlign.center,
                      style: TextStyle(
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
                          : null, // Just an example of variation
                      onTap: () {
                        Navigator.pop(context);
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
              'assets/images/background.png', // Ensure background.png exists
              fit: BoxFit.cover,
            ),
          ),

          // 2. Overlay with faint opacity if needed to ensure text readability
          Positioned.fill(
            child: Container(
              color: const Color(
                0xFFF5F5DC,
              ).withValues(alpha: 0.3), // Cream tint
            ),
          ),

          // 3. Side Decorations (Vertical Lines/Ornaments)
          // Left Side
          Positioned(
            left: 10,
            top: 100,
            bottom: 50,
            child: SizedBox(
              width: 20,
              // Fallback since image is missing: Simple ornate line
              child: const VerticalDivider(
                color: Color(0xFF4B2C5E),
                thickness: 2,
                indent: 20,
                endIndent: 20,
              ),
            ),
          ),
          // Right Side
          Positioned(
            right: 10,
            top: 100,
            bottom: 50,
            child: SizedBox(
              width: 20,
              // Fallback if image missing: Simple ornate line
              child: const VerticalDivider(
                color: Color(0xFF4B2C5E),
                thickness: 2,
                indent: 20,
                endIndent: 20,
              ),
            ),
          ),

          // 4. Content
          Column(
            children: [
              // Header Space (Logo area top center)
              const SizedBox(height: 60),
              Center(
                child: Container(
                  width: 120,
                  height: 120,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xFF4B2C5E),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 10,
                        offset: Offset(0, 5),
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.white, width: 2),
                        image: const DecorationImage(
                          image: AssetImage('assets/images/logo.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 30),

              // List of Buttons
              Expanded(
                child: ListView.builder(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 40,
                    vertical: 10,
                  ),
                  itemCount: mainButtons.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 15),
                      child: IslamicButton(text: mainButtons[index]),
                    );
                  },
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
  const IslamicButton({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
        color: const Color(0xFF4B2C5E),
        borderRadius: BorderRadius.circular(15), // Rounded corners
        boxShadow: const [
          BoxShadow(color: Colors.black26, blurRadius: 5, offset: Offset(0, 3)),
        ],
        // Gradient or Pattern could go here
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          // Decorative Ends (Simulated with shape or Icons if assets missing)
          Positioned(
            left: -10,
            child: Icon(
              Icons.spa,
              color: Colors.white.withValues(alpha: 0.2),
              size: 40,
            ),
          ),
          Positioned(
            right: -10,
            child: Icon(
              Icons.spa,
              color: Colors.white.withValues(alpha: 0.2),
              size: 40,
            ),
          ),

          // Main Text
          Text(
            text,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
              shadows: [
                Shadow(
                  blurRadius: 2.0,
                  color: Colors.black,
                  offset: Offset(1.0, 1.0),
                ),
              ],
            ),
          ),

          // Inner Border/Frame Effect
          Positioned(
            top: 5,
            bottom: 5,
            left: 20,
            right: 20,
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
        ],
      ),
    );
  }
}
