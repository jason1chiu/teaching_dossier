import 'package:flutter/material.dart';
import '../components/section_widgets.dart';

class ExperienceSection extends StatelessWidget {
  final GlobalKey sectionKey;

  const ExperienceSection({
    super.key,
    required this.sectionKey,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        buildSectionTitle('Professional Experience', sectionKey),
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
              'Grade 10/12 OT - John Polanyi CI\nGrade 9 LTO - Northview Heights SS\nGrade 10/12 Teacher Candidate - Northview Heights SS\nGrade 10/11/12 Teacher Candidate - John Polyani CI\nGrade 12 Teacher Candidate - A.Y. Jackson SS\nGrade 11/12 Teacher Candidate - Northern SS',
            ),
          ),
        ),
      ],
    );
  }
}