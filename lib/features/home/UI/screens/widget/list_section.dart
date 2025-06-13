import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:high_fidelity/core/ressources/app_assets.dart';
import 'package:high_fidelity/core/ressources/app_colors.dart';
import 'package:high_fidelity/features/home/UI/screens/widget/products_card.dart';
import 'package:high_fidelity/features/home/data/models/products_model.dart';

class ListSection extends HookWidget {
  const ListSection({super.key});

  @override
  Widget build(BuildContext context) {
    final selectedIndex = useState(0);

    final List<String> categories = [
      'All Coffee',
      'Machiato',
      'Latte',
      'Americano',
    ];

    final List<ProductsModel> products = [
      ProductsModel(
        id: "1",
        imgPath: AppAssets.products1,
        name: "Caffe Mocha",
        type: "Deep Foam",
        price: "4.53",
        rate: "4.8",
      ),
      ProductsModel(
        id: "2",
        imgPath: AppAssets.products3,
        name: "Flat White",
        type: "Espresso",
        price: "3.53",
        rate: "4.8",
      ),
      ProductsModel(
        id: "3",
        imgPath: AppAssets.products2,
        name: "Mocha Fusi",
        type: "Ice/Hot",
        price: "7.53",
        rate: "4.8",
      ),
      ProductsModel(
        id: "4",
        imgPath: AppAssets.products4,
        name: "Caffe Panna",
        type: "Ice/Hot",
        price: "5.53",
        rate: "4.8",
      ),
    ];

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // فلتر التصنيفات
          SizedBox(
            height: 40,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: categories.length,
              separatorBuilder: (_, __) => const SizedBox(width: 16),
              itemBuilder: (context, index) {
                final isSelected = index == selectedIndex.value;
                return GestureDetector(
                  onTap: () {
                    selectedIndex.value = index;
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 8,
                    ),
                    decoration: BoxDecoration(
                      color:
                      isSelected ? AppColors.primaryColor : Colors.grey[50],
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Text(
                      categories[index],
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight:
                        isSelected ? FontWeight.w600 : FontWeight.w400,
                        color: isSelected ? Colors.white : Colors.black,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          const SizedBox(height: 16),
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: products.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 24,
              crossAxisSpacing: 15,
              childAspectRatio: 3 / 4.4,
            ),
            itemBuilder: (context, index) {
              return ProductsCard(productsModel: products[index]);
            },
          ),
        ],
      ),
    );
  }
}
