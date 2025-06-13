import 'package:flutter/material.dart';
import 'package:high_fidelity/features/home/UI/screens/widget/list_section.dart';
import 'package:high_fidelity/features/home/UI/screens/widget/location_section.dart';
import 'package:high_fidelity/features/home/UI/screens/widget/promo_section.dart';
import 'package:high_fidelity/features/home/UI/screens/widget/search_section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Positioned(
            top: -1,
            right: 0,
            left: 0,
            child: Container(
              width: 375,
              height: 280,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomLeft,
                  end: Alignment.topRight,
                  colors: [Color(0xFF313131), Color(0xFF111111)],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 24, left: 24, top: 60),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                LocationSection(),
                const SizedBox(height: 24),
                SearchSection(),
                const SizedBox(height: 24),
                PromoSection(),
                const SizedBox(height: 24),
                Expanded(child: ListSection()),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
