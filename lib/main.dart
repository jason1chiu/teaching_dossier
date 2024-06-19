import 'package:flutter/material.dart';
import 'components/navigation_bar.dart';
import 'components/drawer_items.dart';
import 'sections/about_me.dart';
import 'widgets/hero_section.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Jason\'s Teaching Dossier',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        textTheme: const TextTheme(
          displayLarge: TextStyle(
              fontFamily: 'Lato', fontWeight: FontWeight.bold, fontSize: 32),
          titleLarge: TextStyle(
              fontFamily: 'Lato', fontWeight: FontWeight.bold, fontSize: 20),
          bodyMedium: TextStyle(fontFamily: 'Lato', fontSize: 16),
        ),
      ),
      home: const MyHomePage(title: 'Teaching Dossier'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final GlobalKey _welcomeKey = GlobalKey();
  final GlobalKey _aboutMeKey = GlobalKey();
  final GlobalKey _educationKey = GlobalKey();
  final GlobalKey _experienceKey = GlobalKey();
  final GlobalKey _skillsKey = GlobalKey();
  final GlobalKey _philosophyKey = GlobalKey();
  final GlobalKey _contactKey = GlobalKey();
  final GlobalKey _plpKey = GlobalKey();
  final GlobalKey _beliefsKey = GlobalKey();
  final GlobalKey _resumeKey = GlobalKey();
  final GlobalKey _coverKey = GlobalKey();
  final GlobalKey _appraisalsKey = GlobalKey();
  final GlobalKey _evidenceKey = GlobalKey();

  void scrollToSection(GlobalKey key) {
    Scrollable.ensureVisible(
      key.currentContext!,
      duration: const Duration(seconds: 1),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title, style: Theme.of(context).textTheme.titleLarge),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        automaticallyImplyLeading: false,
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(50.0),
          child: CustomNavigationBar(
            scrollToSection: scrollToSection,
            welcomeKey: _welcomeKey,
            aboutMeKey: _aboutMeKey,
            educationKey: _educationKey,
            experienceKey: _experienceKey,
            skillsKey: _skillsKey,
            philosophyKey: _philosophyKey,
            contactKey: _contactKey,
            plpKey: _plpKey,
            beliefsKey: _beliefsKey,
            resumeKey: _resumeKey,
            appraisalsKey: _appraisalsKey,
            evidenceKey: _evidenceKey,
            coverKey: _coverKey,
          ),
        ),
      ),
      drawer: CustomDrawer(
        scrollToSection: scrollToSection,
        welcomeKey: _welcomeKey,
        aboutMeKey: _aboutMeKey,
        educationKey: _educationKey,
        experienceKey: _experienceKey,
        skillsKey: _skillsKey,
        philosophyKey: _philosophyKey,
        contactKey: _contactKey,
        plpKey: _plpKey,
        beliefsKey: _beliefsKey,
        resumeKey: _resumeKey,
        coverKey: _coverKey,
        appraisalsKey: _appraisalsKey,
        evidenceKey: _evidenceKey,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const HeroSection(), // Use the HeroSection widget
            AboutMeSection(
              aboutMeKey: _aboutMeKey,
              educationKey: _educationKey,
              experienceKey: _experienceKey,
              skillsKey: _skillsKey,
              philosophyKey: _philosophyKey,
              contactKey: _contactKey,
            ),
            // Add other sections with their respective keys if needed
          ],
        ),
      ),
    );
  }
}
