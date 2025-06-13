import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:high_fidelity/core/ressources/app_colors.dart';

class SizeSection extends HookWidget {
  const SizeSection({super.key});

  @override
  Widget build(BuildContext context) {
    final selectedSize = useState("M");
    final List<String> sizes = ['S', 'M', 'L'];

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
            final bool isSelected = selectedSize.value == size;
            return GestureDetector(
              onTap: () => selectedSize.value = size,
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 43,
                  vertical: 10,
                ),
                decoration: BoxDecoration(
                  color: isSelected ? const Color(0xFFF9F2ED) : Colors.white,
                  border: Border.all(
                    color: isSelected
                        ? AppColors.primaryColor
                        : const Color(0xFFE3E3E3),
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
