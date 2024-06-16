import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class CustomDrawer extends StatelessWidget {
  final Function(GlobalKey) scrollToSection;
  final GlobalKey welcomeKey;
  final GlobalKey aboutMeKey;
  final GlobalKey educationKey;
  final GlobalKey experienceKey;
  final GlobalKey skillsKey;
  final GlobalKey philosophyKey;
  final GlobalKey contactKey;
  final GlobalKey plpKey;
  final GlobalKey beliefsKey;
  final GlobalKey resumeKey;
  final GlobalKey coverKey;
  final GlobalKey appraisalsKey;
  final GlobalKey evidenceKey;

  const CustomDrawer({
    super.key,
    required this.scrollToSection,
    required this.welcomeKey,
    required this.aboutMeKey,
    required this.educationKey,
    required this.experienceKey,
    required this.skillsKey,
    required this.philosophyKey,
    required this.contactKey,
    required this.plpKey,
    required this.beliefsKey,
    required this.resumeKey,
    required this.coverKey,
    required this.appraisalsKey,
    required this.evidenceKey,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
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
                fontSize: 22,
              ),
            ),
          ),
          ListTile(
            title: const Text(
              'Welcome',
              style: TextStyle(fontSize: 22),
            ),
            onTap: () {
              Navigator.pop(context);
              scrollToSection(welcomeKey);
            },
          ),
          ListTile(
            title: const Text(
              'About Me',
              style: TextStyle(fontSize: 22),
            ),
            onTap: () {
              Navigator.pop(context);
              scrollToSection(aboutMeKey);
            },
          ),
          ListTile(
            title: const Text(
              'Education',
              style: TextStyle(fontSize: 22),
            ),
            onTap: () {
              Navigator.pop(context);
              scrollToSection(educationKey);
            },
          ),
          ListTile(
            title: const Text(
              'Professional Experience',
              style: TextStyle(fontSize: 22),
            ),
            onTap: () {
              Navigator.pop(context);
              scrollToSection(experienceKey);
            },
          ),
          ListTile(
            title: const Text(
              'Skills and Interests',
              style: TextStyle(fontSize: 22),
            ),
            onTap: () {
              Navigator.pop(context);
              scrollToSection(skillsKey);
            },
          ),
          ListTile(
            title: const Text(
              'Personal Philosophy',
              style: TextStyle(fontSize: 22),
            ),
            onTap: () {
              Navigator.pop(context);
              scrollToSection(philosophyKey);
            },
          ),
          ListTile(
            title: const Text(
              'Contact',
              style: TextStyle(fontSize: 22),
            ),
            onTap: () {
              Navigator.pop(context);
              scrollToSection(contactKey);
            },
          ),
          ListTile(
            title: const Text(
              'Professional Learning Plan',
              style: TextStyle(fontSize: 22),
            ),
            onTap: () {
              Navigator.pop(context);
              _launchURL(
                  'https://teachingdossier6.wordpress.com/wp-content/uploads/2024/04/professional-learning-plan-1.pdf');
            },
          ),
          ListTile(
            title: const Text(
              'Statement of Beliefs',
              style: TextStyle(fontSize: 22),
            ),
            onTap: () {
              Navigator.pop(context);
              _launchURL(
                  'https://teachingdossier6.wordpress.com/wp-content/uploads/2024/04/statement-of-beliefs.pdf');
            },
          ),
          ListTile(
            title: const Text(
              'Résumé',
              style: TextStyle(fontSize: 22),
            ),
            onTap: () {
              Navigator.pop(context);
              _launchURL(
                  'https://teachingdossier6.wordpress.com/wp-content/uploads/2024/04/jason-chiu-teachers-resume.pdf');
            },
          ),
          ListTile(
            title: const Text(
              'Cover Letter',
              style: TextStyle(fontSize: 22),
            ),
            onTap: () {
              Navigator.pop(context);
              _launchURL(
                  'https://teachingdossier6.wordpress.com/wp-content/uploads/2024/04/jasons-teacher-cover-letter-for-grade-9-12.pdf');
            },
          ),
          ListTile(
            title: const Text(
              'Teaching Appraisals',
              style: TextStyle(fontSize: 22),
            ),
            onTap: () {
              Navigator.pop(context);
              scrollToSection(appraisalsKey);
            },
          ),
          ListTile(
            title: const Text(
              'Teaching Evidence',
              style: TextStyle(fontSize: 22),
            ),
            onTap: () {
              Navigator.pop(context);
              scrollToSection(evidenceKey);
            },
          ),
        ],
      ),
    );
  }

  void _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
