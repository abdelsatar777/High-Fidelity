import 'package:flutter/material.dart';
import '../../../../../core/ressources/app_assets.dart';
import '../../../../../core/widgets/custom_button.dart';

class SearchSection extends StatelessWidget {
  const SearchSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Expanded(
          child: TextField(
            decoration: InputDecoration(
              filled: true,
              fillColor: Color(0xFF2A2A2A),
              hintText: "Search Coffee",
              hintStyle: const TextStyle(color: Colors.grey),
              prefixIcon: const Icon(Icons.search, color: Colors.white),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide.none,
              ),
            ),
          ),
        ),
        const SizedBox(width: 16),
        CustomButton(
          onPressed: () {},
          padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 23),
          borderRadius: 12,
          child: Image.asset(width: 20, height: 20, AppAssets.filterIcon),
        ),
      ],
    );
  }
}
