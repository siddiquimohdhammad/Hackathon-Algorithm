import 'package:farmerconnect/Explore/fertilizer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'Explore/crops.dart';

class Explore extends StatefulWidget {
  const Explore({super.key});

  @override
  State<Explore> createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green.shade500,
        title: Text("Explore"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Fertilizer()));
            },
            child: Container(
              alignment: Alignment.center,
              child: Text(
                "Fertilizer",
                style: TextStyle(fontSize: 35),
              ),
              height: height * 0.13,
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
                  Color.fromARGB(255, 189, 255, 7),
                  Colors.green.shade200,
                ]),
                color: Colors.brown,
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
          SizedBox(
            height: height * 0.02,
          ),
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Fertilizer()));
            },
            child: Container(
              alignment: Alignment.center,
              child: Text(
                "Soil ",
                style: TextStyle(fontSize: 35),
              ),
              height: height * 0.13,
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
                  Color.fromARGB(255, 189, 255, 7),
                  Colors.green.shade200,
                ]),
                color: Colors.brown,
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
          SizedBox(
            height: height * 0.02,
          ),
          InkWell(
            onTap: () {
              // Navigator.push(context,
                  // MaterialPageRoute(builder: (context) => Fertilizer()));
            },
            child: InkWell(
              onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Fertilizer()));
            },
              child: Container(
                alignment: Alignment.center,
                child: Text(
                  "crop",
                  style: TextStyle(fontSize: 35),
                ),
                height: height * 0.13,
                decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                    Color.fromARGB(255, 189, 255, 7),
                    Colors.green.shade200,
                  ]),
                  color: Colors.brown,
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
