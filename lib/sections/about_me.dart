import 'package:flutter/material.dart';
import '../components/section_widgets.dart';

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
    return Column(
      key: aboutMeKey,
      children: [
        buildSectionTitle('About Me', aboutMeKey),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: LayoutBuilder(
            builder: (context, constraints) {
              double maxCardWidth = constraints.maxWidth * 0.5;

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
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  buildSectionTitle(
                                      'Teaching Philosophy', philosophyKey),
                                  Card(
                                    elevation: 4,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8.0),
                                      side: const BorderSide(
                                          color: Colors.deepPurple, width: 2),
                                    ),
                                    margin:
                                        const EdgeInsets.symmetric(vertical: 8),
                                    child: Padding(
                                      padding: const EdgeInsets.all(16.0),
                                      child: buildParagraph(
                                        'My teaching philosophy is anchored in the "thinking classroom" concept, where I strive to create an environment that immerses students in active engagement with Mathematics and Physics. This approach is designed to promote collaboration, encourage critical analysis, and facilitate the practical application of theoretical concepts. By sparking curiosity and fostering a culture of intellectual exploration, I empower students to confidently tackle complex problems and enhance their understanding of the subject matter. My goal is to transform students from passive recipients of information into active explorers, equipping them with the critical thinking skills and self-assurance needed to inquire and navigate the world around them.',
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(width: 16),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  buildSectionTitle('Education', educationKey),
                                  Card(
                                    elevation: 4,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8.0),
                                      side: const BorderSide(
                                          color: Colors.deepPurple, width: 2),
                                    ),
                                    margin:
                                        const EdgeInsets.symmetric(vertical: 8),
                                    child: Padding(
                                      padding: const EdgeInsets.all(16.0),
                                      child: buildParagraph(
                                        'B.Sc. in Mathematics and Physics\nM.Ed. in Education Technology\nB.Sc. in Physics & Astronomy - York University\nM.A. in Mathematics & Statistics - York University\nFull-Stack Web Development - University of Toronto SCS',
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )
                      : Column(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                buildSectionTitle(
                                    'Teaching Philosophy', philosophyKey),
                                Card(
                                  elevation: 4,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8.0),
                                    side: const BorderSide(
                                        color: Colors.deepPurple, width: 2),
                                  ),
                                  margin:
                                      const EdgeInsets.symmetric(vertical: 8),
                                  child: Padding(
                                    padding: const EdgeInsets.all(16.0),
                                    child: buildParagraph(
                                      'My teaching philosophy is anchored in the "thinking classroom" concept, where I strive to create an environment that immerses students in active engagement with Mathematics and Physics. This approach is designed to promote collaboration, encourage critical analysis, and facilitate the practical application of theoretical concepts. By sparking curiosity and fostering a culture of intellectual exploration, I empower students to confidently tackle complex problems and enhance their understanding of the subject matter. My goal is to transform students from passive recipients of information into active explorers, equipping them with the critical thinking skills and self-assurance needed to inquire and navigate the world around them.',
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 16),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                buildSectionTitle('Education', educationKey),
                                Card(
                                  elevation: 4,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8.0),
                                    side: const BorderSide(
                                        color: Colors.deepPurple, width: 2),
                                  ),
                                  margin:
                                      const EdgeInsets.symmetric(vertical: 8),
                                  child: Padding(
                                    padding: const EdgeInsets.all(16.0),
                                    child: buildParagraph(
                                      'B.Sc. in Mathematics and Physics\nM.Ed. in Education Technology\nB.Sc. in Physics & Astronomy - York University\nM.A. in Mathematics & Statistics - York University\nFull-Stack Web Development - University of Toronto SCS',
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                  const SizedBox(height: 32),
                  constraints.maxWidth > 600
                      ? Row(
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  buildSectionTitle(
                                      'Professional Experience', experienceKey),
                                  Card(
                                    elevation: 4,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8.0),
                                      side: const BorderSide(
                                          color: Colors.deepPurple, width: 2),
                                    ),
                                    margin:
                                        const EdgeInsets.symmetric(vertical: 8),
                                    child: Padding(
                                      padding: const EdgeInsets.all(16.0),
                                      child: buildParagraph(
                                        'Grade 10/12 OT - John Polanyi CI\nGrade 9 LTO - Northview Heights SS\nGrade 10/12 Teacher Candidate - Northview Heights SS\nGrade 10/11/12 Teacher Candidate - John Polyani CI\nGrade 12 Teacher Candidate - A.Y. Jackson SS\nGrade 11/12 Teacher Candidate - Northern SS',
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(width: 16),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  buildSectionTitle(
                                      'Skills and Interests', skillsKey),
                                  Card(
                                    elevation: 4,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8.0),
                                      side: const BorderSide(
                                          color: Colors.deepPurple, width: 2),
                                    ),
                                    margin:
                                        const EdgeInsets.symmetric(vertical: 8),
                                    child: Padding(
                                      padding: const EdgeInsets.all(16.0),
                                      child: buildParagraph(
                                        'Innovative Teaching Methods\nEducational Technology\nStudent Mentorship\nProfessional Development\nRacquet Sports\nVolleyball\nOrigami',
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )
                      : Column(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                buildSectionTitle(
                                    'Professional Experience', experienceKey),
                                Card(
                                  elevation: 4,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8.0),
                                    side: const BorderSide(
                                        color: Colors.deepPurple, width: 2),
                                  ),
                                  margin:
                                      const EdgeInsets.symmetric(vertical: 8),
                                  child: Padding(
                                    padding: const EdgeInsets.all(16.0),
                                    child: buildParagraph(
                                      'Grade 10/12 OT - John Polanyi CI\nGrade 9 LTO - Northview Heights SS\nGrade 10/12 Teacher Candidate - Northview Heights SS\nGrade 10/11/12 Teacher Candidate - John Polyani CI\nGrade 12 Teacher Candidate - A.Y. Jackson SS\nGrade 11/12 Teacher Candidate - Northern SS',
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 16),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                buildSectionTitle(
                                    'Skills and Interests', skillsKey),
                                Card(
                                  elevation: 4,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8.0),
                                    side: const BorderSide(
                                        color: Colors.deepPurple, width: 2),
                                  ),
                                  margin:
                                      const EdgeInsets.symmetric(vertical: 8),
                                  child: Padding(
                                    padding: const EdgeInsets.all(16.0),
                                    child: buildParagraph(
                                      'Innovative Teaching Methods\nEducational Technology\nStudent Mentorship\nProfessional Development\nRacquet Sports\nVolleyball\nOrigami',
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                  const SizedBox(height: 32),
                  Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        buildSectionTitle('Contact Information', contactKey),
                        ConstrainedBox(
                          constraints: BoxConstraints(
                            minWidth: 200,
                            maxWidth: MediaQuery.of(context).size.width * 0.5,
                          ),
                          child: Card(
                            elevation: 4,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                              side: const BorderSide(
                                  color: Colors.deepPurple, width: 2),
                            ),
                            margin: const EdgeInsets.symmetric(vertical: 8),
                            child: const Padding(
                              padding: EdgeInsets.all(16.0),
                              child: Row(
                                children: [
                                  Icon(Icons.email, color: Colors.deepPurple),
                                  SizedBox(width: 8),
                                  Expanded(
                                    child: Text('jason.chiu@example.com'),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        ConstrainedBox(
                          constraints: BoxConstraints(
                            minWidth: 200,
                            maxWidth: MediaQuery.of(context).size.width * 0.5,
                          ),
                          child: Card(
                            elevation: 4,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                              side: const BorderSide(
                                  color: Colors.deepPurple, width: 2),
                            ),
                            margin: const EdgeInsets.symmetric(vertical: 8),
                            child: const Padding(
                              padding: EdgeInsets.all(16.0),
                              child: Row(
                                children: [
                                  Icon(Icons.phone, color: Colors.deepPurple),
                                  SizedBox(width: 8),
                                  Expanded(
                                    child: Text('(123) 456-7890'),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        ConstrainedBox(
                          constraints: BoxConstraints(
                            minWidth: 200,
                            maxWidth: MediaQuery.of(context).size.width * 0.5,
                          ),
                          child: Card(
                            elevation: 4,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                              side: const BorderSide(
                                  color: Colors.deepPurple, width: 2),
                            ),
                            margin: const EdgeInsets.symmetric(vertical: 8),
                            child: const Padding(
                              padding: EdgeInsets.all(16.0),
                              child: Row(
                                children: [
                                  Icon(Icons.link, color: Colors.deepPurple),
                                  SizedBox(width: 8),
                                  Expanded(
                                    child: Text('linkedin.com/in/jasonchiu'),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
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
