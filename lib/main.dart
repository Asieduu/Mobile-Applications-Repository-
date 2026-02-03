import 'package:flutter/material.dart';
import 'screens/portfolio_screen.dart';
import 'models/portfolio_data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final portfolioData = PortfolioData(
      name: 'Asiedu Nathaniel ',
      title: 'Level 300 Comoputer Science Student',
      bio: 'A passionate developer studying Flutter and mobile app development.',
      skills: ['C++', 'C#', 'Java', 'Python'],
      education: [
        Education(
          institution: 'Valley View University',
          degree: 'BSc Computer Science',
          year: '2024 - Present',
        ),
      ],
    );

    return MaterialApp(
      title: 'Professional Portfolio',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: PortfolioScreen(data: portfolioData),
    );
  }
}
