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
  int choiceIndex = 1;
  Map<String, double> dataMap = {
    "Rice": 29,
    "Maize": 23,
    "Sugarcane": 18,
    "Banana": 8,
    "cotton": 4,
  };

  List<Color> colorlist = [
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
        leading: Image.asset(
            "assets/images/zero2.jpg",
            scale: 3,
            // width: 10,
            // height: 50,
          ),
        backgroundColor: Colors.green.shade500,
        title: Text('Farmer connect'),
         flexibleSpace: Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: <Color>[Color.fromARGB(255, 123, 208, 33), Color.fromARGB(255, 25, 239, 121)]),
      ),
    ),
      ),
    
     
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              
            Text("Don't be rude, donate some food.",
            style: TextStyle(backgroundColor: Color.fromARGB(255, 39, 33, 45),
            fontSize: (20),
            color: Colors.white
            ),
            ),
            SizedBox(height: 20,width: 80,),
            Image.asset('assets/images/zero_hunger.jpg'),
            Text("Sustainable Development Goal 2 (SDG 2 or Global Goal 2) aims to achieve zero hunger. It is one of the 17 Sustainable Development Goals established by the United Nations in 2015. The official wording is: End hunger, achieve food security and improved nutrition and promote sustainable agriculture",
            style: TextStyle(
            fontSize: (20),
            color: Color.fromARGB(255, 23, 20, 20)
            ),
            ),
              PieChart(
                dataMap: dataMap,
                colorList: colorlist,
                chartRadius: MediaQuery.of(context).size.width / 2,
                centerText: "Crop",
              ),
              Text('Pie Chart Showing Percentage area Of Cultivation'),
            ],
          ),
        ),
      ),
    );
  }
}
