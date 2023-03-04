import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class riceData extends StatelessWidget {
  const riceData({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body:  ListView(
        children:[ 
          Card(
              elevation: 5,
              
              child: ListTile(
                leading: Image.asset("assets/images/kolam.jpg"),
                title: Text("Kolam Rice"),
                subtitle: Text(
                  "Creamy White: Rs 25/Kg,"
                  "White: Rs 48/Kg",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),

            Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: ListTile(
                leading: Image.asset("assets/images/rice.jpg"),
                title: Text("Basmati Rice"),
                subtitle: Text(
                  "₹: 180",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),

            Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: ListTile(
                leading: Image.asset("assets/images/blackrice.jpg"),
                title: Text("Black Rice - 1 Kg"),
                subtitle: Text(
                  "₹: 324",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
            ]
      ),
          // SizedBox(height: MediaQuery.of(context).size.height * 0.01),
      
         );
  }
}