import 'package:flutter/material.dart';

Widget buildSectionTitle(String title, GlobalKey key) {
  return Padding(
    key: key,
    padding: const EdgeInsets.symmetric(vertical: 16.0),
    child: Center(
      child: Text(
        title,
        textAlign: TextAlign.center,
        style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      ),
    ),
  );
}

Widget buildParagraph(String text) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 16.0),
    child: Text(text, style: const TextStyle(fontSize: 16)),
  );
}

Widget buildSeparator() {
  return Divider(thickness: 1, color: Colors.grey.withOpacity(0.5));
}
