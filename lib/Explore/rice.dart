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
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: ListTile(
                leading: Image.asset("assets/images/rice.jpg"),
                title: Text("TrustBasket Bio Organic Manure - 1 Kg"),
                subtitle: Text(
                  "₹: 249",
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
                title: Text("TrustBasket Bio Organic Manure - 1 Kg"),
                subtitle: Text(
                  "₹: 249",
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
                title: Text("TrustBasket Bio Organic Manure - 1 Kg"),
                subtitle: Text(
                  "₹: 249",
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