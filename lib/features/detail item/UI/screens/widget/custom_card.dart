import 'package:flutter/material.dart';
import '../../../../../core/ressources/app_colors.dart';

class CustomCard extends StatelessWidget {
  final IconData icon;

  const CustomCard({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsetsGeometry.all(12),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Icon(icon, color: AppColors.primaryColor),
    );
  }
}
