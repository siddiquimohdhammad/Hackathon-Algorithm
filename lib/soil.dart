import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class soilInfo extends StatefulWidget {
  const soilInfo({Key? key}) : super(key: key);

  @override
  State<soilInfo> createState() => _soilInfoState();
}

class _soilInfoState extends State<soilInfo> {
  var firestoreDB=FirebaseFirestore.instance.collection('crops').snapshots();
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Fertilizer Types"),
      ),
      body: Container(
        width: 450,
        height: 300,
        padding: new EdgeInsets.all(10.0),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          color: Color.fromARGB(255, 113, 255, 89),
          elevation: 9,
          child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
            const ListTile(
              title: Text('Red Soil', style: TextStyle(fontSize: 30.0)),
              subtitle: Text('Red Soil found in rajasthan',
                  style: TextStyle(fontSize: 18.0)),
            ),
            ButtonBar(
              children: <Widget>[
                ElevatedButton(
                  child: const Text('Play'),
                  onPressed: () {/* ... */},
                ),
              ],
            )
          ]),

        ),
      ),
    );
  }
}
