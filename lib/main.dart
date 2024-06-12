import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'components/navigation_bar.dart';
import 'components/section_widgets.dart';

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
  final GlobalKey _philosophyKey = GlobalKey();
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

  void _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        automaticallyImplyLeading: false,
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(50.0),
          child: CustomNavigationBar(
            scrollToSection: scrollToSection,
            welcomeKey: _welcomeKey,
            plpKey: _plpKey,
            beliefsKey: _beliefsKey,
            resumeKey: _resumeKey,
            appraisalsKey: _appraisalsKey,
            evidenceKey: _evidenceKey,
            coverKey: _coverKey,
          ),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
              child: const Text(
                'Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              title: const Text('Welcome'),
              onTap: () {
                Navigator.pop(context);
                scrollToSection(_welcomeKey);
              },
            ),
            ListTile(
              title: const Text('Professional Learning Plan'),
              onTap: () {
                Navigator.pop(context);
                _launchURL(
                    'https://teachingdossier6.wordpress.com/wp-content/uploads/2024/04/professional-learning-plan-1.pdf');
              },
            ),
            ListTile(
              title: const Text('Statement of Beliefs'),
              onTap: () {
                Navigator.pop(context);
                _launchURL(
                    'https://teachingdossier6.wordpress.com/wp-content/uploads/2024/04/statement-of-beliefs.pdf');
              },
            ),
            ListTile(
              title: const Text('Résumé'),
              onTap: () {
                Navigator.pop(context);
                _launchURL(
                    'https://teachingdossier6.wordpress.com/wp-content/uploads/2024/04/jason-chiu-teachers-resume.pdf');
              },
            ),
            ListTile(
              title: const Text('Cover Letter'),
              onTap: () {
                Navigator.pop(context);
                _launchURL(
                    'https://teachingdossier6.wordpress.com/wp-content/uploads/2024/04/jasons-teacher-cover-letter-for-grade-9-12.pdf');
              },
            ),
            ListTile(
              title: const Text('Teaching Appraisals'),
              onTap: () {
                Navigator.pop(context);
                scrollToSection(_appraisalsKey);
              },
            ),
            ListTile(
              title: const Text('Teaching Evidence'),
              onTap: () {
                Navigator.pop(context);
                scrollToSection(_evidenceKey);
              },
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Hero Section
            SizedBox(
              width: double.infinity,
              child: Container(
                padding: const EdgeInsets.all(20.0),
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                        'assets/images/classroom.jpg'), // Replace with your background image
                    fit: BoxFit.cover,
                  ),
                ),
                child: const Column(
                  children: [
                    CircleAvatar(
                      radius: 100,
                      backgroundImage: AssetImage(
                          'assets/images/your_photo.jpg'), // Replace with your photo
                    ),
                    SizedBox(height: 40),
                    Text(
                      'Welcome to My Teaching Dossier',
                      style: TextStyle(fontSize: 48, color: Colors.white),
                    ),
                    Text(
                      'Jason Chiu',
                      style: TextStyle(fontSize: 36, color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
            buildSectionTitle('Teaching Philosophy', _philosophyKey),
            buildParagraph(
                'My teaching philosophy is anchored in the "thinking classroom," where I focus on transforming students from passive receivers of information into active participants in their learning journey. By integrating innovative technologies and fostering an environment rich in collaboration and critical thinking, I enable students to engage deeply with the material and apply their learning in practical contexts. This approach enhances student understanding and retention and equips them with the critical skills necessary to tackle real-world problems confidently. Emphasizing a culture of intellectual exploration and continuous professional development, I strive to inspire students to embrace education as a lifelong journey of discovery and growth.'),
            buildSeparator(),
            buildSectionTitle('Professional Learning Plan', _plpKey),
            buildSeparator(),
            buildSectionTitle('Statement of Beliefs', _beliefsKey),
            buildSeparator(),
            buildSectionTitle('Résumé', _resumeKey),
            buildSeparator(),
            buildSectionTitle('Cover Letter', _coverKey),
            buildSeparator(),
            buildSectionTitle('Teaching Appraisals', _appraisalsKey),
            buildSeparator(),
            buildSectionTitle('Teaching Evidence', _evidenceKey),
          ],
        ),
      ),
    );
  }
}
