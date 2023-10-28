import 'package:flutter/material.dart';
import 'package:tquiz/components/toolbar.dart';

import '../config/app_routes.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Toolbar(title: 'Quiz'),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => Navigator.of(context).pushNamed(AppRoutes.quiz),
              child: const Text('Start Quiz'),
            ),
          ],
        ),
      ),
    );
  }
}
