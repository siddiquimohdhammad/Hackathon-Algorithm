import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:pie_chart/pie_chart.dart';

class homeScreen extends StatefulWidget {
  const homeScreen({Key? key}) : super(key: key);

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  int choiceIndex=1;
  Map<String, double> dataMap={
    "Rice":17,
    "Pulses":13.2,
    "Wheat":11,
    "Bajra":10.14,
    "Corn":10.12,
  };

  List<Color> colorlist=[
    Color.fromARGB(255, 47, 239, 149),
    Color.fromARGB(255, 250, 191, 62),
    Color.fromARGB(255, 113, 244, 73),
    Color.fromARGB(255, 68, 94, 241),
    Color.fromARGB(255, 245, 91, 94),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Farmer Connect'),
      ),
     body: PieChart(
      dataMap: dataMap,
      colorList: colorlist,
      chartRadius: MediaQuery.of(context).size.width/2,
      centerText: "Crop",
      ),
    );
  }
}