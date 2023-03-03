

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
        child: Center(
          child: Text(
            'Farmer Connect',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ),
        
      ),
    );
  }
}