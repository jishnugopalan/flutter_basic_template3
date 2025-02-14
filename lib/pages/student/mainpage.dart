import 'package:flutter/material.dart';
import 'package:scholarholla/pages/student/dashboard.dart';
import 'package:scholarholla/pages/student/widgets/bottom_navigation.dart';
import 'package:scholarholla/pages/student/widgets/drawer_nav.dart';

final pages = [
  StudentDashboard(),
  StudentDashboard(),
  StudentDashboard(),
  StudentDashboard()
];
final tites = ["Home", "Auction", "Account", "Cart"];

class MainPage extends StatelessWidget {
  const MainPage({super.key});

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
