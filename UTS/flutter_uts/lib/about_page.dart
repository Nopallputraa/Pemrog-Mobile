import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('About Page')),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text('Aplikasi ini adalah contoh sederhana yang dikembangkan menggunakan Flutter. '
                  'Aplikasi ini bertujuan untuk menunjukkan cara kerja navigasi, layout, dan fitur interaktif dalam Flutter.'),
        ),
      ),
    );
  }
}