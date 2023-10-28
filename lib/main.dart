import 'package:flutter/material.dart';
import 'package:tquiz/config/app_routes.dart';
import 'package:tquiz/pages/home_page.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.home,
      routes: AppRoutes.pages,
    );
  }
}
