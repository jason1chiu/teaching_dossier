import 'package:flutter/material.dart';
import '../components/section_widgets.dart';

class EducationSection extends StatelessWidget {
  final GlobalKey sectionKey;

  const EducationSection({
    super.key,
    required this.sectionKey,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        buildSectionTitle('Education', sectionKey),
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
              'B.Ed. – Queen\'s University\nCert. in Coding – U of T SCS\nM.A. in Mathematics & Statistics - York University\nB.Sc. in Mathematics and its Applications - TMU\nB.Sc. In Physics and Astronomy - York University',
            ),
          ),
        ),
      ],
    );
  }
}