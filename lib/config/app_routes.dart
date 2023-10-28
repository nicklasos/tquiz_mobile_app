import 'package:tquiz/pages/haptic_page.dart';
import 'package:tquiz/pages/home_page.dart';
import 'package:tquiz/pages/quiz_page.dart';

class AppRoutes {
  static final pages = {
    home: (context) => HomePage(),
    quiz: (context) => QuizPage(),
    haptic: (context) => HapticPage(),
  };

  static const home = '/';
  static const quiz = '/quiz';
  static const haptic = '/haptic';
}
