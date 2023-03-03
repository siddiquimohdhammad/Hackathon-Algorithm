

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'home.dart';
import 'navbar.dart';

class splashScreen extends StatefulWidget {

  @override
  State<splashScreen> createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _navigatetohome();
  }

  _navigatetohome()async{
    await Future.delayed(Duration(seconds: 3),(){});
    Navigator.pushReplacement(
      this.context, MaterialPageRoute(builder: (context)=>navBar()) );
  }

  @override
  Widget build(BuildContext context) {
  return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xffbcfb69), Color(0xff26bbac)],
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
          ),
        ),
        // color: Colors.green.shade300,
        child: Center(
          child: Container(
            height:MediaQuery.of(context).size. height * 0.2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage("assets/images/farmer.png"),
                  radius: 50,
                ),
                Text(
                  'Farmer',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}