import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'nav_button.dart';

class CustomNavigationBar extends StatelessWidget {
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

  const CustomNavigationBar({
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

  void _launchURL(String urlString) async {
    final Uri url = Uri.parse(urlString);
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 600) {
          // Display horizontal navigation bar for larger screens
          return Container(
            color: Colors.grey[200],
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                PopupMenuButton<String>(
                  onSelected: (String value) {
                    switch (value) {
                      case 'About Me':
                        scrollToSection(aboutMeKey);
                        break;
                      case 'Education':
                        scrollToSection(educationKey);
                        break;
                      case 'Teaching Philosophy':
                        scrollToSection(philosophyKey);
                        break;
                      case 'Professional Experience':
                        scrollToSection(experienceKey);
                        break;
                      case 'Skills and Interests':
                        scrollToSection(skillsKey);
                        break;
                      case 'Contact':
                        scrollToSection(contactKey);
                        break;
                    }
                  },
                  itemBuilder: (BuildContext context) {
                    return {
                      'About Me',
                      'Teaching Philosophy',
                      'Education',
                      'Professional Experience',
                      'Skills and Interests',
                      'Contact'
                    }.map((String choice) {
                      return PopupMenuItem<String>(
                        value: choice,
                        child: Text(
                          choice,
                          style: const TextStyle(
                              fontSize: 22, color: Colors.deepPurple),
                        ),
                      );
                    }).toList();
                  },
                  child: const Text(
                    'Welcome',
                    style: TextStyle(
                      fontSize: 26,
                      color: Colors.deepPurple,
                    ),
                  ),
                ),
                NavButton(
                    label: 'Professional Learning Plan',
                    onPressed: () => _launchURL(
                        'https://teachingdossier6.wordpress.com/wp-content/uploads/2024/04/professional-learning-plan-1.pdf')),
                NavButton(
                    label: 'Statement of Beliefs',
                    onPressed: () => _launchURL(
                        'https://teachingdossier6.wordpress.com/wp-content/uploads/2024/04/statement-of-beliefs.pdf')),
                NavButton(
                    label: 'Résumé',
                    onPressed: () => _launchURL(
                        'https://teachingdossier6.wordpress.com/wp-content/uploads/2024/04/jason-chiu-teachers-resume.pdf')),
                NavButton(
                    label: 'Cover Letter',
                    onPressed: () => _launchURL(
                        'https://teachingdossier6.wordpress.com/wp-content/uploads/2024/04/jasons-teacher-cover-letter-for-grade-9-12.pdf')),
                NavButton(
                    label: 'Teaching Appraisals',
                    onPressed: () => scrollToSection(appraisalsKey)),
                NavButton(
                    label: 'Teaching Evidence',
                    onPressed: () => scrollToSection(evidenceKey)),
              ],
            ),
          );
        } else {
          // Display drawer for smaller screens
          return AppBar(
            title: const Text('Jason\'s Teaching Dossier'),
            backgroundColor: Theme.of(context).colorScheme.inversePrimary,
            automaticallyImplyLeading: false,
            leading: Builder(
              builder: (context) => IconButton(
                icon: const Icon(Icons.menu),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
              ),
            ),
          );
        }
      },
    );
  }
}
