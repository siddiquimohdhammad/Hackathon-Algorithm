import 'package:farmerconnect/Register.dart';
import 'package:farmerconnect/explore.dart';
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
    Explore(),
    wetaherReport(),
    conatctUs(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green.shade500,
      body: IndexedStack(
        index: currentIndex,
        children: screen,
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.green.shade500,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.amber.shade300,
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
              icon: Image.network(
                "https://cdn-icons-png.flaticon.com/512/9231/9231625.png",
                width: 50,
                height: 30,
              ),
              label: 'Weather',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.control_point_duplicate),
              label: 'contact',
            ),
          ]),
    );
  }
}
