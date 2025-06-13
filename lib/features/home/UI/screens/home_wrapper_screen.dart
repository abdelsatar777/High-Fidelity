import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:high_fidelity/core/ressources/app_colors.dart';
import 'package:high_fidelity/features/home/UI/screens/home_screen.dart';

class HomeWrapperScreen extends HookWidget {
  const HomeWrapperScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final currentIndex = useState(0);

    final screens = [
      const HomeScreen(),
      const Center(child: Text("Favorites")),
      const Center(child: Text("Cart")),
      const Center(child: Text("Notifications")),
    ];

    return Scaffold(
      body: screens[currentIndex.value],

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex.value,
        onTap: (index) => currentIndex.value = index,
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        elevation: 8,
        selectedFontSize: 0,
        unselectedFontSize: 0,
        items: List.generate(4, (index) {
          final icons = [
            Icons.home_filled,
            Icons.favorite_border,
            Icons.shopping_bag_outlined,
            Icons.notifications_none,
          ];
          return _navBarItem(
            index: index,
            currentIndex: currentIndex.value,
            icon: icons[index],
          );
        }),
      ),
    );
  }

  BottomNavigationBarItem _navBarItem({
    required int index,
    required int currentIndex,
    required IconData icon,
  }) {
    final bool isSelected = currentIndex == index;

    return BottomNavigationBarItem(
      label: '',
      icon: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, color: isSelected ? AppColors.primaryColor : Colors.grey),
          const SizedBox(height: 8),
          if (isSelected)
            Container(
              width: 10,
              height: 5,
              decoration: BoxDecoration(
                color: AppColors.primaryColor,
                borderRadius: BorderRadius.circular(18),
              ),
            ),
        ],
      ),
    );
  }
}
