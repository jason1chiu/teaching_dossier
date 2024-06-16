import 'package:flutter/material.dart';
import '../components/section_widgets.dart';

class PhilosophySection extends StatelessWidget {
  final GlobalKey sectionKey;

  const PhilosophySection({
    super.key,
    required this.sectionKey,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        buildSectionTitle('Teaching Philosophy', sectionKey),
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
              'My teaching philosophy is anchored in the "thinking classroom" concept, where I strive to create an environment that immerses students in active engagement with Mathematics and Physics. This approach is designed to promote collaboration, encourage critical analysis, and facilitate the practical application of theoretical concepts. By sparking curiosity and fostering a culture of intellectual exploration, I empower students to confidently tackle complex problems and enhance their understanding of the subject matter. My goal is to transform students from passive recipients of information into active explorers, equipping them with the critical thinking skills and self-assurance needed to inquire and navigate the world around them.',
            ),
          ),
        ),
      ],
    );
  }
}