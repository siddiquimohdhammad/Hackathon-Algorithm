import 'package:farmerconnect/Explore/bajra.dart';
import 'package:farmerconnect/Explore/corn.dart';
import 'package:farmerconnect/Explore/pulses.dart';
import 'package:farmerconnect/Explore/rice.dart';
import 'package:farmerconnect/Explore/wheat.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class crops extends StatefulWidget {
  const crops({Key? key}) : super(key: key);

  @override
  State<crops> createState() => _cropsState();
}

class _cropsState extends State<crops> {
  @override
  Widget build(BuildContext context) {

   return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          leading: Image.asset(
            "assets/images/b.png",
            scale: 3,
            // width: 10,
            // height: 50,
          ),
          bottom: TabBar(
            
            isScrollable: true,
            tabs: [
              Tab(
                text: "Rice",
                
              ),
              Tab(
                text: "Wheat",
              ),
               Tab(
                text: "Pulses",
              ),
               Tab(
                text: "Bajra",
              ),
               Tab(
                text: "Corn",
              ),
            ],
          ),
          title: Text('Fertilizers'),
          
        ),
        body: TabBarView(children: [
         riceData(),
         wheatData(),
         pulsesData(),
         bajraData(),
         cornData(),
        ]),
      ),
    );
  }
}