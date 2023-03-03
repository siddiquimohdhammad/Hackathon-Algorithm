// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:farmerconnect/Explore/Inorganic.dart';
import 'package:farmerconnect/Explore/organic.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Fertilizer extends StatefulWidget {
  const Fertilizer({super.key});

  @override
  State<Fertilizer> createState() => _FertilizerState();
}

class _FertilizerState extends State<Fertilizer> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green.shade500,
          leading: Image.asset(
            "assets/images/b.png",
            scale: 3,
            // width: 10,
            // height: 50,
          ),
          bottom: TabBar(
            tabs: [
              Tab(
                text: "Organic",
              ),
              Tab(
                text: "Inorganic",
              ),
            ],
          ),
          title: Text('Fertilizers'),
        ),
        body: TabBarView(children: [
          // Icon(Icons.flight, size: 350),
          organic(),
          Inorganic(),
        ]),
      ),
    );
  }
}
