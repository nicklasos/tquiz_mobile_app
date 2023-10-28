import 'package:flutter/material.dart';
import 'package:tquiz/components/toolbar.dart';

class QuizPage extends StatelessWidget {
  const QuizPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: Toolbar(
        title: 'Quiz',
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Pay game'),
          ],
        ),
      ),
    );
  }
}
