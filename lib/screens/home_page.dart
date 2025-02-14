import 'package:flutter/material.dart';
import 'package:nike_sneaker_store/screens/favorites.dart';
import 'package:nike_sneaker_store/screens/home_screen.dart';
import 'package:nike_sneaker_store/screens/notifications.dart';
import 'package:nike_sneaker_store/screens/profile.dart';
import '../models/item.dart'; // Import ShopItems
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final PageController _pageController = PageController();
  final items = shopItems(); // Create a list of ShopItems
  int _selectedIndex = 0; // Define the _selectedIndex variable

  final iconList = <IconData>[
    Icons.home_outlined,
    Icons.favorite_outline,
    Icons.notifications_outlined,
    Icons.person_outline,
  ];

  late final List<Widget> _pages = [
    const HomeScreen(),
    const FavoritesPage(),
    const NotificationsPage(),
    const ProfilePage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    _pageController.jumpToPage(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: _pages,
        onPageChanged: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.shopping_cart),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar(
        icons: iconList,
        activeIndex: _selectedIndex,
        gapLocation: GapLocation.center,
        notchSmoothness: NotchSmoothness.verySmoothEdge,
        leftCornerRadius: 32,
        rightCornerRadius: 32,
        onTap: _onItemTapped,
        //other params
      ),
    );
  }
}
