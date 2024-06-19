import 'package:flutter/material.dart';
import '../components/section_widgets.dart';
import '../sections/philosophy.dart';
import '../sections/education.dart';
import '../sections/experience.dart';
import '../sections/skills.dart';
import '../sections/contact.dart';

class AboutMeSection extends StatelessWidget {
  final GlobalKey aboutMeKey;
  final GlobalKey educationKey;
  final GlobalKey experienceKey;
  final GlobalKey skillsKey;
  final GlobalKey philosophyKey;
  final GlobalKey contactKey;

  const AboutMeSection({
    super.key,
    required this.aboutMeKey,
    required this.educationKey,
    required this.experienceKey,
    required this.skillsKey,
    required this.philosophyKey,
    required this.contactKey,
  });

  @override
  Widget build(BuildContext context) {
    final GlobalKey sectionTitleKey = GlobalKey();
    return Column(
      key: aboutMeKey,
      children: [
        buildSectionTitle('About Me', sectionTitleKey),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: LayoutBuilder(
            builder: (context, constraints) {
              double maxCardWidth = constraints.maxWidth;
              return Column(
                children: [
                  Center(
                    child: ConstrainedBox(
                      constraints: BoxConstraints(
                        minWidth: 200,
                        maxWidth: maxCardWidth,
                      ),
                      child: Card(
                        elevation: 4,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                          side: const BorderSide(
                              color: Colors.deepPurple, width: 2),
                        ),
                        margin: const EdgeInsets.symmetric(vertical: 8),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: buildParagraph(
                            'Hello, I am Jason Chiu, a dedicated educator with a passion for transforming the learning experience. With a background in Mathematics and Physics, I have been committed to fostering a collaborative and engaging classroom environment. My journey in education has been fueled by a desire to inspire students and help them discover their potential.',
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 32),
                  constraints.maxWidth > 600
                      ? Row(
                          children: [
                            Expanded(
                              child:
                                  PhilosophySection(sectionKey: philosophyKey),
                            ),
                            const SizedBox(width: 16),
                            Expanded(
                              child: EducationSection(sectionKey: educationKey),
                            ),
                          ],
                        )
                      : Column(
                          children: [
                            PhilosophySection(sectionKey: philosophyKey),
                            const SizedBox(height: 16),
                            EducationSection(sectionKey: educationKey),
                          ],
                        ),
                  const SizedBox(height: 32),
                  constraints.maxWidth > 600
                      ? Row(
                          children: [
                            Expanded(
                              child:
                                  ExperienceSection(sectionKey: experienceKey),
                            ),
                            const SizedBox(width: 16),
                            Expanded(
                              child: SkillsSection(sectionKey: skillsKey),
                            ),
                          ],
                        )
                      : Column(
                          children: [
                            ExperienceSection(sectionKey: experienceKey),
                            const SizedBox(height: 16),
                            SkillsSection(sectionKey: skillsKey),
                          ],
                        ),
                  const SizedBox(height: 32),
                  Center(
                    child: ContactSection(sectionKey: contactKey),
                  ),
                ],
              );
            },
          ),
        ),
        buildSeparator(),
      ],
    );
  }
}
