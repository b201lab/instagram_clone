import 'package:flutter/material.dart';
import 'package:instagram_clone/views/home.dart';
import 'package:instagram_clone/views/profile.dart';
import 'package:instagram_clone/views/reels.dart';
import 'package:instagram_clone/views/search.dart';
import 'package:instagram_clone/views/shop.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _selectedIndex = 0;

  static const List<Widget> _navigationOptions = [
    Home(),
    Search(),
    Reels(),
    Shop(),
    Profile()
  ];

  void _onNavTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _navigationOptions.elementAt(_selectedIndex),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(
              color: Colors.grey.withOpacity(0.5),
              width: 1,
            ),
          ),
        ),
        child: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon:
                  Icon(_selectedIndex == 0 ? Icons.home : Icons.home_outlined),
              label: 'home',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                  _selectedIndex == 1 ? Icons.search : Icons.search_outlined),
              label: 'home',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                  _selectedIndex == 2 ? Icons.movie : Icons.movie_outlined),
              label: 'home',
            ),
            BottomNavigationBarItem(
              icon: Icon(_selectedIndex == 3
                  ? Icons.local_mall
                  : Icons.local_mall_outlined),
              label: 'home',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                  _selectedIndex == 4 ? Icons.person : Icons.person_outlined),
              label: 'home',
            ),
          ],
          currentIndex: _selectedIndex,
          onTap: _onNavTapped,
          // Styling Navbar Item
          type: BottomNavigationBarType.fixed,
          iconSize: 32,
          unselectedItemColor: Colors.black,
          selectedItemColor: Colors.black,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          elevation: 0,
        ),
      ),
    );
  }
}
