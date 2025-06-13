import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:high_fidelity/core/ressources/app_colors.dart';

class DescriptionSection extends HookWidget {
  final String fullText;

  const DescriptionSection({super.key, required this.fullText});

  @override
  Widget build(BuildContext context) {
    final isExpanded = useState(false);

    String displayText = isExpanded.value
        ? fullText
        : "${fullText.substring(0, 80)}... ";

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Description",
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
        ),
        const SizedBox(height: 8),
        RichText(
          text: TextSpan(
            text: displayText,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w300,
              color: Colors.grey,
            ),
            children: [
              if (!isExpanded.value)
                TextSpan(
                  text: "Read More",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: AppColors.primaryColor,
                  ),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      isExpanded.value = true;
                    },
                ),
            ],
          ),
        ),
      ],
    );
  }
}
