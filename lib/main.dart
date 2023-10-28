import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tquiz/config/app_routes.dart';
import 'package:tquiz/pages/home_page.dart';
import 'package:tquiz/providers/app_provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider<AppProvider>(create: (context) => AppProvider()),
    ],
    child: App(),
  ));
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.home,
      routes: AppRoutes.pages,
    );
  }
}
