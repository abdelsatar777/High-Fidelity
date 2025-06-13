import 'package:flutter/material.dart';
import 'package:high_fidelity/core/ressources/app_colors.dart';

class SizeSection extends StatefulWidget {
  const SizeSection({super.key});

  @override
  State<SizeSection> createState() => _SizeSectionState();
}

class _SizeSectionState extends State<SizeSection> {
  String selectedSize = "M";

  final List<String> sizes = ['S', 'M', 'L'];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Size",
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
        ),
        const SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: sizes.map((size) {
            final bool isSelected = selectedSize == size;
            return GestureDetector(
              onTap: () {
                setState(() {
                  selectedSize = size;
                });
              },
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 43,
                  vertical: 10,
                ),
                decoration: BoxDecoration(
                  color: isSelected ? Color(0xFFF9F2ED) : Colors.white,
                  border: Border.all(
                    color: isSelected
                        ? AppColors.primaryColor
                        : Color(0xFFE3E3E3),
                  ),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Text(
                  size,
                  style: TextStyle(
                    color: isSelected ? AppColors.primaryColor : Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}
