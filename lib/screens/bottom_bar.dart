import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:tickets/screens/home_screen.dart';
import 'package:tickets/screens/search_screen.dart';
import 'package:tickets/screens/ticket_screen.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});
  

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectedIndex = 0;
  static final  List<Widget>_widgetOptions = <Widget> [
    const HomeScreen(),
    const SearchScreen(),
    const TicketScreen(),
    const Text('Profile '),
  ];

  void _onItemTapped(int index) {
   setState(() {
     _selectedIndex=index;
   });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: Center(child: _widgetOptions[_selectedIndex]),
       
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        elevation: 10,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: const Color.fromARGB(255, 8, 164, 241),
        unselectedItemColor: const Color(0xFF526480),

        items:  const [
        BottomNavigationBarItem(
          label: 'Home',
          icon: Icon(FluentSystemIcons.ic_fluent_home_regular),
          activeIcon: Icon(FluentSystemIcons.ic_fluent_home_filled),
        ),
        BottomNavigationBarItem(
          label: 'Search',
          icon: Icon(FluentSystemIcons.ic_fluent_search_regular),
          activeIcon: Icon(FluentSystemIcons.ic_fluent_search_filled)
        ),
        BottomNavigationBarItem(
          label: 'Ticket',
          icon: Icon(FluentSystemIcons.ic_fluent_ticket_regular),
          activeIcon: Icon(FluentSystemIcons.ic_fluent_ticket_filled)
        ),
        BottomNavigationBarItem(
          label: 'Profile',
          icon: Icon(FluentSystemIcons.ic_fluent_person_regular),
          activeIcon: Icon(FluentSystemIcons.ic_fluent_person_filled)
        ),
      ]),
    );
  }
}