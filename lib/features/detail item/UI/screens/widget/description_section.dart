import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:high_fidelity/core/ressources/app_colors.dart';

class DescriptionSection extends StatefulWidget {
  final String fullText;

  const DescriptionSection({super.key, required this.fullText});

  @override
  State<DescriptionSection> createState() => _DescriptionSectionState();
}

class _DescriptionSectionState extends State<DescriptionSection> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    String displayText = isExpanded
        ? widget.fullText
        : "${widget.fullText.substring(0, 80)}... ";

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
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w300,
              color: Colors.grey,
            ),
            children: [
              if (!isExpanded)
                TextSpan(
                  text: "Read More",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: AppColors.primaryColor,
                  ),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      setState(() {
                        isExpanded = true;
                      });
                    },
                ),
            ],
          ),
        ),
      ],
    );
  }
}
