import 'package:flutter/material.dart';
import 'package:high_fidelity/features/detail%20item/UI/screens/detail_screen.dart';
import 'package:high_fidelity/features/home/UI/screens/home_screen.dart';
import 'package:high_fidelity/features/home/UI/screens/home_wrapper_screen.dart';
import 'package:high_fidelity/features/start/UI/screens/start_screen.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light().copyWith(
        scaffoldBackgroundColor: Color(0xFFF9F9F9),
        textTheme: ThemeData.light().textTheme.apply(fontFamily: "Sora"),
      ),
      routes: {
        "/home_wrapper_screen": (context) => HomeWrapperScreen(),
        "/home_screen": (context) => HomeScreen(),
        "/detail_screen": (context) => DetailScreen(),
        "/order_screen": (context) => HomeWrapperScreen(),
        "/delivery_screen": (context) => HomeWrapperScreen(),
      },
      home: StartScreen(),
    );
  }
}
