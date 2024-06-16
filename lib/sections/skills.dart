import 'package:flutter/material.dart';
import '../components/section_widgets.dart';

class SkillsSection extends StatelessWidget {
  final GlobalKey sectionKey;

  const SkillsSection({
    super.key,
    required this.sectionKey,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        buildSectionTitle('Skills and Interests', sectionKey),
        Card(
          elevation: 4,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
            side: const BorderSide(color: Colors.deepPurple, width: 2),
          ),
          margin: const EdgeInsets.symmetric(vertical: 8),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: buildParagraph(
              'Innovative Teaching Methods\nEducational Technology\nStudent Mentorship\nProfessional Development\nRacquet Sports\nVolleyball\nOrigami',
            ),
          ),
        ),
      ],
    );
  }
}