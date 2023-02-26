import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';

import '../screens/homepage/home_screen.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;
  static final List<Widget> _widgetOptions = <Widget>[
    const HomeScreen(),
    const Text("Search"),
    const Text("Tickets"),
    const Text("Profile"),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions[_selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: _onItemTapped,
        currentIndex: _selectedIndex,
        elevation: 10,
        selectedItemColor: const Color(0xff677bac),
        unselectedItemColor: const Color(0xff526480),
        showUnselectedLabels: false,
        showSelectedLabels: false,
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(FluentIcons.home_20_filled),
            label: 'null',
          ),
          BottomNavigationBarItem(
            icon: Icon(FluentIcons.search_20_filled),
            label: 'null',
          ),
          BottomNavigationBarItem(
            icon: Icon(FluentIcons.ticket_horizontal_20_filled),
            label: 'null',
          ),
          BottomNavigationBarItem(
            icon: Icon(FluentIcons.person_20_filled),
            label: 'Akun',
          ),
        ],
      ),
    );
  }
}
