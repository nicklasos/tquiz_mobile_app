import 'dart:js';

import 'package:tquiz/pages/QuizPage.dart';

import '../pages/home_page.dart';

class AppRoutes {
  static final pages = {
    home: (context) => HomePage(),
    quiz: (context) => QuizPage(),
  };

  static const home = '/';
  static const quiz = '/quiz';
}
