import 'package:flutter/material.dart';
import 'package:smart_garden/presentation/welcome_screen/welcome_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true, fontFamily: 'ProximaNovaAlt'),
      initialRoute: '/',
      routes: {'/': (context) => const WelcomeScreen()},
    );
  }
}
