import 'package:flutter/material.dart';
import 'package:travel_app/features/bar/ui/views/bar_view.dart';
import 'package:travel_app/features/home/ui/views/home_view.dart';
import 'package:travel_app/features/profile/ui/views/profile_view.dart';
import 'package:travel_app/features/search/ui/views/search_view.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});

  @override
  State<MainView> createState() => _MainViewState();
}

int currentIndex = 0;

// lib/features/home/ui/views/main_view.dart
class _MainViewState extends State<MainView> {
  @override
  Widget build(BuildContext context) {
    List pages = [
      const HomeView(),
      const BarView(),
      const SearchView(),
      const ProfileView(),
    ];

    onTap(int index) {
      setState(() {
        currentIndex = index;
      });
    }

    return Scaffold(
      backgroundColor: Colors.white,
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          unselectedFontSize: 0,
          selectedFontSize: 0,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          selectedItemColor: Colors.black54,
          unselectedItemColor: Colors.grey.withOpacity(0.5),
          showSelectedLabels: false,
          showUnselectedLabels: false,
          elevation: 0,
          currentIndex: currentIndex,
          onTap: onTap,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.apps),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.bar_chart_sharp),
              label: 'Bar',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
          ]),
    );
  }
}
