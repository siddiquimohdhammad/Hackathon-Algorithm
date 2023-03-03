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
  State<navBar> createState() => _navBarState();
}

class _navBarState extends State<navBar> {
  int myIndex=0;
  Map<int, GlobalKey<NavigatorState>> navigatorKeys = {
     0: GlobalKey<NavigatorState>(),
     1: GlobalKey<NavigatorState>(),
     2: GlobalKey<NavigatorState>(),
     3: GlobalKey<NavigatorState>(),
  };
    final List<Widget> _widgetOptions = <Widget>[
    
    const Register(),
    const soilInfo(),
    const wetaherReport(),
    const conatctUs(),

  ];
  @override
  Widget build(BuildContext context) {

    
    return Scaffold(
      


      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        onTap:(index){
          setState(() {
            myIndex=index;
          });
        } ,
        currentIndex:myIndex,
        items:const [
        
        
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
          backgroundColor: Color.fromARGB(255, 57, 171, 192),
          
          ),
        BottomNavigationBarItem(icon: Icon(Icons.call),label: 'Soil',backgroundColor: Color.fromARGB(255, 95, 199, 26)),
        BottomNavigationBarItem(icon: Icon(Icons.call),label: 'Weather',backgroundColor: Color.fromARGB(255, 44, 201, 49)),
         BottomNavigationBarItem(icon: Icon(Icons.call),label: 'Conatct',backgroundColor: Color.fromARGB(255, 255, 120, 36)),

        
      ]
      ),

       
       
    body:  buildNavigator(),
     );
  }
  buildNavigator() {
     return Navigator(
       key: navigatorKeys[myIndex],
       onGenerateRoute: (RouteSettings settings){
         return MaterialPageRoute(builder: (_) => _widgetOptions.elementAt(myIndex));
       },
     );
  }
}

