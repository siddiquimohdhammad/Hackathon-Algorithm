import 'package:farmerconnect/Register.dart';
import 'package:farmerconnect/soil.dart';
import 'package:farmerconnect/weather.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'contact.dart';
import 'home.dart';

class navBar extends StatefulWidget {
  const navBar({Key? key}) : super(key: key);

  @override
  State<navBar> createState() => _bottomNavState();
}

class _bottomNavState extends State<navBar> {
  int currentIndex = 0;
  final screen = [
    homeScreen(),
    soilInfo(),
    wetaherReport(),
    conatctUs(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: currentIndex,
        children: screen,
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Color.fromARGB(245, 50, 153, 38),
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.white,
          onTap: (index) => setState(() => currentIndex = index),
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.explore),
              label: 'Explore',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add_box_outlined),
              label: 'Create',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.control_point_duplicate),
              label: 'contract',
            ),
          ]),
    );
  }
}
