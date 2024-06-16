import 'package:flutter/material.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        padding: const EdgeInsets.all(16.0),
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
            SizedBox(height: 20),
            Text(
              'Welcome to My Teaching Dossier',
              style: TextStyle(fontSize: 48, color: Colors.white70),
            ),
            Text(
              'Jason Chiu',
              style: TextStyle(fontSize: 36, color: Colors.white70),
            ),
          ],
        ),
      ),
    );
  }
}
