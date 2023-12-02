import 'package:flutter/material.dart';
import 'package:flutter_tournament/Screens/Calander.dart';
import 'package:flutter_tournament/Screens/HomePage.dart';
import 'package:flutter_tournament/Screens/KfupmCalander.dart';
import 'package:flutter_tournament/Screens/daragatiPage.dart';
import 'package:flutter_tournament/Screens/profilePage.dart';
import 'package:flutter_tournament/Screens/gpaScreen.dart';
import 'package:flutter_tournament/demo2.dart';
import 'package:flutter_tournament/demo3.dart';


class TabsScreen extends StatefulWidget {
  const TabsScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return _TabsScreenState();
  }
}

class _TabsScreenState extends State<TabsScreen> {
  int _selectedPageIndex = 0;
  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget _activePage = HomePage();
    if (_selectedPageIndex == 1) {
      _activePage = const DarajatiPage();
    }
    if (_selectedPageIndex == 2) {
      _activePage = const MyCalenderScreen();
    }
    if (_selectedPageIndex == 3) {
      _activePage = const ProfilePage();
    }
    return Scaffold(
        backgroundColor: const Color.fromRGBO(245, 245, 251, 1),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.black,
          currentIndex: _selectedPageIndex,
          onTap: _selectPage,
          selectedFontSize: 0,
          backgroundColor: const Color.fromARGB(255, 255, 255, 255),
          iconSize: 35,
          showUnselectedLabels: true,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home_outlined,
              ),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.school_outlined,
              ),
              label: "Darajati",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.search_outlined,
              ),
              label: "CC",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person_outline,
              ),
              label: "profile",
            ),
          ],
        ),
        body: _activePage);
  }
}
