import 'package:flutter/material.dart';

import 'homeFragments/FeedsScreen.dart';
import 'homeFragments/SearchScreen.dart';
import 'homeFragments/QnAScreen.dart';
import 'homeFragments/ClubsScreen.dart';
import 'homeFragments/ProfileScreen.dart';

class HomeScreen extends StatefulWidget {
  /*
  * TODO
  *  - This is supposed to be the home screen.
  *  - It should have 5 bottom navigation tabs, depending on the user.
  *  - 0: Home feed
  *  - 1: Search
  *  - 2: QnA
  *  - 3: Clubs' Jobs
  *  - 4: User Profile
  * */
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  PageController _pageController = PageController();
  List<Widget> _screens = [
    FeedsScreen(),
    SearchScreen(),
    QnAScreen(),
    ClubsScreen(),
    ProfileScreen()
  ];
  List<String> _titles = [
    "IIITB Connects",
    "Search",
    "Questions",
    "Club Activities",
    "User Profile"
  ];

  void _onItemTapped(int index) {
    _pageController.jumpToPage(index);
  }

  void _onPageChanged(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_titles[_currentIndex]),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: _onItemTapped,
        currentIndex: _currentIndex,
        elevation: 12,
        backgroundColor: Colors.white,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.black26,
        showUnselectedLabels: true,
        items: [
          BottomNavigationBarItem(label: "Home", icon: Icon(Icons.home)),
          BottomNavigationBarItem(label: "Search", icon: Icon(Icons.search)),
          BottomNavigationBarItem(
              label: "QnA", icon: Icon(Icons.question_answer)),
          BottomNavigationBarItem(label: "Clubs", icon: Icon(Icons.assignment)),
          BottomNavigationBarItem(label: "Profile", icon: Icon(Icons.person)),
        ],
      ),
      body: PageView(
        controller: _pageController,
        onPageChanged: _onPageChanged,
        children: _screens,
      ),
    );
  }
}
