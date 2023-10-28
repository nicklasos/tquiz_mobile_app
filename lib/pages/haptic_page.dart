import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tquiz/components/toolbar.dart';

class HapticPage extends StatelessWidget {
  const HapticPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Toolbar(
        title: 'Haptic Feedback',
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () => HapticFeedback.selectionClick(),
                child: const Text('Selection click'),
              ),
              Divider(),
              ElevatedButton(
                onPressed: () => HapticFeedback.lightImpact(),
                child: const Text('Light impact'),
              ),
              Divider(),
              ElevatedButton(
                onPressed: () => HapticFeedback.mediumImpact(),
                child: const Text('Medium impact'),
              ),
              Divider(),
              ElevatedButton(
                onPressed: () => HapticFeedback.heavyImpact(),
                child: const Text('Heavy impact'),
              ),
              Divider(),
              ElevatedButton(
                onPressed: () => HapticFeedback.vibrate(),
                child: const Text('Vibrate'),
              ),
              Divider(),
              ElevatedButton(
                onPressed: () async {
                  await HapticFeedback.selectionClick();
                  await Future.delayed(const Duration(milliseconds: 200));
                  await HapticFeedback.lightImpact();
                  await Future.delayed(const Duration(milliseconds: 200));
                  await HapticFeedback.mediumImpact();
                  await Future.delayed(const Duration(milliseconds: 200));
                  await HapticFeedback.heavyImpact();
                },
                child: const Text('Progress up'),
              ),
              Divider(),
              ElevatedButton(
                onPressed: () async {
                  await HapticFeedback.heavyImpact();
                  await Future.delayed(const Duration(milliseconds: 200));
                  await HapticFeedback.mediumImpact();
                  await Future.delayed(const Duration(milliseconds: 200));
                  await HapticFeedback.lightImpact();
                  await Future.delayed(const Duration(milliseconds: 200));
                  await HapticFeedback.selectionClick();
                },
                child: const Text('Progress down'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
