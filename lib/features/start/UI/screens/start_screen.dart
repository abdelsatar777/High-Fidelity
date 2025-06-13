import 'package:flutter/material.dart';
import 'package:high_fidelity/core/ressources/app_assets.dart';
import 'package:high_fidelity/core/widgets/custom_button.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          //Background
          Positioned(
            top: -20,
            right: 0,
            left: 0,
            child: Image.asset(AppAssets.startImg, fit: BoxFit.cover),
          ),
          //Content
          Positioned(
            bottom: 30,
            left: 0,
            right: 0,
            child: Column(
              children: [
                Text(
                  "Fall in Love with Coffee in Blissful Delight!",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  "Welcome to our cozy coffee corner, where every cup is a delightful for you.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(height: 32),
                CustomButton(
                  onPressed: () =>
                      Navigator.pushNamed(context, "/home_wrapper_screen"),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 115,
                    vertical: 16,
                  ),
                  child: Text(
                    "Get Started",
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
