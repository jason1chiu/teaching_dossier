import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Teaching Dossier',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Teaching Dossier Home Page'),
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
  final GlobalKey _learningPlanKey = GlobalKey();
  final GlobalKey _resumeKey = GlobalKey();
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
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
        automaticallyImplyLeading: false,
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(50.0),
          child: buildNavigationBar(),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            buildSectionTitle('Welcome to my Teaching Dossier', _welcomeKey),
            buildParagraph(
                'My teaching philosophy is anchored in the "thinking classroom," where I focus on transforming students from passive receivers of information into active participants in their learning journey. By integrating innovative technologies and fostering an environment rich in collaboration and critical thinking, I enable students to engage deeply with the material and apply their learning in practical contexts. This approach enhances student understanding and retention and equips them with the critical skills necessary to tackle real-world problems confidently. Emphasizing a culture of intellectual exploration and continuous professional development, I strive to inspire students to embrace education as a lifelong journey of discovery and growth.'),
            buildSeparator(),
            buildSectionTitle('Professional Learning Plan & Statement of Beliefs', _learningPlanKey),
            buildSeparator(),
            buildSectionTitle('Résumé & Cover Letter', _resumeKey),
            buildSeparator(),
            buildSectionTitle('Teaching Appraisals', _appraisalsKey),
            buildSeparator(),
            buildSectionTitle('Teaching Evidence', _evidenceKey),
          ],
        ),
      ),
    );
  }

  Widget buildNavigationBar() {
    return Container(
      color: Colors.grey[200],
      padding: EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          NavButton(label: 'Welcome', onPressed: () => scrollToSection(_welcomeKey)),
          NavButton(label: 'Learning Plan & Beliefs', onPressed: () => scrollToSection(_learningPlanKey)),
          NavButton(label: 'Résumé & Cover Letter', onPressed: () => scrollToSection(_resumeKey)),
          NavButton(label: 'Teaching Appraisals', onPressed: () => scrollToSection(_appraisalsKey)),
          NavButton(label: 'Teaching Evidence', onPressed: () => scrollToSection(_evidenceKey)),
          NavButton(label: 'Professional Learning Plan', onPressed: () => _launchURL('https://teachingdossier6.wordpress.com/wp-content/uploads/2024/04/professional-learning-plan-1.pdf')),
          NavButton(label: 'Statement of Beliefs', onPressed: () => _launchURL('https://teachingdossier6.wordpress.com/wp-content/uploads/2024/04/statement-of-beliefs.pdf')),
          NavButton(label: 'Résumé', onPressed: () => _launchURL('https://teachingdossier6.wordpress.com/wp-content/uploads/2024/04/jason-chiu-teachers-resume.pdf')),
          NavButton(label: 'Cover Letter', onPressed: () => _launchURL('https://teachingdossier6.wordpress.com/wp-content/uploads/2024/04/jasons-teacher-cover-letter-for-grade-9-12.pdf')),
        ],
      ),
    );
  }

  Widget buildSectionTitle(String title, GlobalKey key) {
    return Padding(
      key: key,
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Center(
        child: Text(
          title,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  Widget buildParagraph(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Text(text, style: TextStyle(fontSize: 16)),
    );
  }

  Widget buildSeparator() {
    return Divider(thickness: 1, color: Colors.grey.withOpacity(0.5));
  }
}

class NavButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;

  NavButton({required this.label, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(label),
    );
  }
}