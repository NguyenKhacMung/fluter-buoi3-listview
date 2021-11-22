import 'package:buoi3/route/path.dart';
import 'package:buoi3/screen/Discount.dart';
import 'package:buoi3/screen/Home.dart';
import 'package:flutter/material.dart';

class BottomTab extends StatefulWidget {
  static String path = homePath;

  const BottomTab({Key? key}) : super(key: key);

  @override
  _BottomTabState createState() => _BottomTabState();
}

class _BottomTabState extends State<BottomTab> {
  int _selectedIndex = 0;
  final PageController _pageController = PageController();

// static const List<Widget> _widgetOptions = <Widget>[
//     Home(),
//     Discount(
//       back: (){},
//     ),
//   ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void onTabTapped(int index) {
    this._pageController.animateToPage(index,
        duration: const Duration(milliseconds: 500), curve: Curves.easeInOut);
  }

  void previousPage() {
    this._pageController.animateToPage(_selectedIndex - 1,
        duration: const Duration(milliseconds: 500), curve: Curves.easeInOut);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('Home'),
      // ),
      body: PageView(
        controller: _pageController,
        children: <Widget>[
          Home(),
          Discount(
            back: previousPage,
          ),
          // Detail(),
        ],
        onPageChanged: _onItemTapped,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.brightness_5),
            label: 'Discount',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined),
            label: 'cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_outlined,
            ),
            label: 'Profile',
          ),
        ],
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: _selectedIndex,
        selectedItemColor: Color(0xFFF7CC74),
        unselectedItemColor: Color(0xFFBFBFBF),
        onTap: onTabTapped,
      ),
    );
  }
}
