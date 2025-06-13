import 'package:flutter/material.dart';
import 'package:high_fidelity/core/ressources/app_assets.dart';
import 'package:high_fidelity/core/ressources/app_colors.dart';
import 'package:high_fidelity/core/widgets/custom_button.dart';
import 'package:high_fidelity/features/detail%20item/UI/screens/widget/custom_app_bar.dart';
import 'package:high_fidelity/features/detail%20item/UI/screens/widget/custom_card.dart';
import 'package:high_fidelity/features/detail%20item/UI/screens/widget/description_section.dart';
import 'package:high_fidelity/features/detail%20item/UI/screens/widget/size_section.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 60, right: 24, left: 24),
              child: Column(
                children: [
                  //App Bar
                  CustomAppBar(title: "Detail"),
                  const SizedBox(height: 24),
                  //Product Image
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    clipBehavior: Clip.antiAlias,
                    // مهم لقص المحتوى
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: Image.asset(
                        AppAssets.products1,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  //Product Details
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Caffe Mocha",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            "Ice/Hot",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Colors.grey,
                            ),
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(Icons.star, color: Colors.amber),
                              Text.rich(
                                TextSpan(
                                  children: [
                                    TextSpan(
                                      text: "4.8 ",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14,
                                      ),
                                    ),
                                    TextSpan(
                                      text: "(230)",
                                      style: TextStyle(
                                        color: Colors.grey,
                                        // لون الرقم بين القوسين
                                        fontSize: 12,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          CustomCard(icon: Icons.local_shipping),
                          const SizedBox(width: 12),
                          CustomCard(icon: Icons.coffee),
                          const SizedBox(width: 12),
                          CustomCard(icon: Icons.all_inbox),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Divider(color: Color(0xFFE3E3E3)),
                  const SizedBox(height: 16),
                  //Product Description
                  DescriptionSection(
                    fullText:
                        "A cappuccino is an approximately 150 ml (5 oz) beverage, with 25 ml of espresso coffee and 85ml of fresh milk the foam.",
                  ),
                  const SizedBox(height: 24),
                  //Product Size
                  SizeSection(),
                  const SizedBox(height: 24),
                ],
              ),
            ),
            //Buy Size
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(16),
                  topLeft: Radius.circular(16),
                ),
              ),
              padding: const EdgeInsetsGeometry.only(
                top: 16,
                left: 24,
                right: 24,
                bottom: 46,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Price",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Colors.grey,
                        ),
                      ),
                      Text(
                        "\$4.53",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: AppColors.primaryColor,
                        ),
                      ),
                    ],
                  ),
                  CustomButton(
                    onPressed: () {},
                    padding: const EdgeInsetsGeometry.symmetric(
                      vertical: 16,
                      horizontal: 72,
                    ),
                    child: Text(
                      "Buy Now",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
