import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'quiz.dart';
import 'quiz_result.dart';
import 'welcome.dart';

void main() async {
  await Hive.initFlutter();
  var box = await Hive.openBox('appBox');

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const WelcomePage(),
      routes: {
        '/home': (context) => const WelcomePage(),
        '/quiz': (context) => const QuizPage(),
        '/result': (context) => const ResultPage(),
      },
    );
  }
}
