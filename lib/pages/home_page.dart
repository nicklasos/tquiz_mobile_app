import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:tquiz/components/toolbar.dart';
import 'package:tquiz/providers/app_provider.dart';

import '../config/app_routes.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const Toolbar(title: 'Quiz'),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                const Divider(),
                ElevatedButton(
                  onPressed: () {
                    HapticFeedback.mediumImpact();
                    Navigator.of(context).pushNamed(AppRoutes.quiz);
                  },
                  child: Text('Start Quiz'),
                ),
                const Divider(),
                ElevatedButton(
                  onPressed: () {
                    HapticFeedback.selectionClick();
                    Navigator.of(context).pushNamed(AppRoutes.haptic);
                  },
                  child: const Text('Haptic Test'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
