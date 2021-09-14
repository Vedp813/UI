import 'package:flutter/material.dart';
import 'package:test12/screen/home.dart';

class Navbar extends StatefulWidget {
  @override
  _NavbarState createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  int selectedPage = 0;

  final _pageOptions = [
    home(),
    home(),
    home(),
    home(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: _pageOptions[selectedPage],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home, size: 30), title: Text('Home')),
            BottomNavigationBarItem(
                icon: Icon(Icons.explore_outlined, size: 30), title: Text('Explore')),
            BottomNavigationBarItem(
                icon: Icon(Icons.school_outlined, size: 30),
                title: Text('Admissions')),
            BottomNavigationBarItem(
                icon: Icon(Icons.contact_support_outlined, size: 30),
                title: Text('FAQs')),
          ],
          selectedItemColor: Colors.blue[900],
          elevation: 5.0,
          unselectedItemColor: Colors.blue,
          currentIndex: selectedPage,
          backgroundColor: Colors.white,
          onTap: (index) {
            setState(() {
              selectedPage = index;
            });
          },
        ));
  }
}
