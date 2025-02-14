import 'package:flutter/material.dart';
import 'package:scholarholla/pages/college/dashboard.dart';
import 'package:scholarholla/pages/college/widgets/bottom_navigation.dart';
import 'package:scholarholla/pages/college/widgets/drawer_nav.dart';

final pages = [
  CollegeDashboard(),
  CollegeDashboard(),
  CollegeDashboard(),
  CollegeDashboard()
];
final tites = ["Home", "Auction", "Account", "Cart"];

class CollegeMain extends StatelessWidget {
  const CollegeMain({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: indexChanged,
      builder: (context, int index, child) {
        return Scaffold(
          appBar: AppBar(
            title: Text(tites[index]),
            actions: [],
          ),
          bottomNavigationBar: const CustomerBottomNav(),
          body: pages[index],
          drawer: const CustomerDrawer(),
        );
      },
    );
  }
}
