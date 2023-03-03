import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class organic extends StatefulWidget {
  const organic({super.key});

  @override
  State<organic> createState() => _organicState();
}

class _organicState extends State<organic> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Card(
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: ListTile(
              leading: Image.asset("assets/images/biomanure.jpg"),
              title: Text("TrustBasket Bio Organic Manure - 1 Kg"),
              subtitle: Text(
                "Price: ₹249",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.01),
          Card(
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: ListTile(
              leading: Image.asset("assets/images/vermi.webp"),
              title: Text("NATURES PLUS Vermi Compost - Organic Manure, 1 kg"),
              subtitle: Text(
                "Price: ₹60",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.01),
          Card(
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: ListTile(
              leading: Image.asset("assets/images/leafy.webp"),
              title: Text(
                  "Leafy Tales Organic Vermicompost - Natural, Fertiliser, Manure, For Planting & Gardening, Brown, 1 kg"),
              subtitle: Text(
                "Price: ₹249",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.01),
          Card(
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: ListTile(
              leading: Image.asset("assets/images/npk_f.png"),
              title: Text("Organic NPK Fertilizer - 750gm"),
              subtitle: Text(
                "Price: ₹285",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.01),
          // Card(
          //   elevation: 5,
          //   shape: RoundedRectangleBorder(
          //     borderRadius: BorderRadius.circular(20),
          //   ),
          //   child: ListTile(
          //     leading: Image.asset("assets/images/biomanure.jpg"),
          //     title: Text("TrustBasket Bio Organic Manure - 1 Kg"),
          //     subtitle: Text(
          //       "Price: 249",
          //       style: TextStyle(fontWeight: FontWeight.bold),
          //     ),
          //   ),
          // ),
          // SizedBox(height: MediaQuery.of(context).size.height * 0.01),
        ],
      ),
    );
  }
}
