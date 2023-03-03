import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class FeedbackForm extends StatefulWidget {
  FeedbackForm({Key? key}) : super(key: key);

  @override
  State<FeedbackForm> createState() => _FeedbackFormState();
}

class _FeedbackFormState extends State<FeedbackForm> {
  CollectionReference StudentInfo = FirebaseFirestore.instance.collection('StudentInfo');
  // details.add(dataToSave);
  // late String  Name;
  // late String SId;
  // late String Programid;
  // late String gpa;
  // late String Mobnum;

  TextEditingController namecontroller = new TextEditingController();
  TextEditingController addresscontroller = new TextEditingController();
  TextEditingController mobilecontroller = new TextEditingController();
  TextEditingController descriptioncontroller = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
       appBar: AppBar(
        // centerTitle: true,
        titleSpacing: 0,
        leading: Icon(
          Icons.account_circle_outlined,
          color: Colors.black,
          size: MediaQuery.of(context).size.height * 0.05,
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height / 1,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: TextFormField(
                  controller: namecontroller,
                  decoration: InputDecoration(
                    labelText: "Name",
                    fillColor: Colors.white,
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue, width: 2.0)),
                  ),
                  
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: TextFormField(
                  maxLength: 10,
                  keyboardType: TextInputType.number,
                  controller: mobilecontroller,
                  decoration: InputDecoration(
                    
                    labelText: "Mobile Number",
                    fillColor: Colors.white,
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue, width: 2.0)),
                  ),
                  
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: TextFormField(
                  maxLines: null,
                  controller: addresscontroller,
                  // obscureText: true,
                  decoration: InputDecoration(
                    labelText: "Address",
                    fillColor: Colors.white,
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue, width: 2.0)),
                  ),
                  
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: TextFormField(
                  maxLines: null,
                  controller: descriptioncontroller,
                  // obscureText: true,
                  decoration: InputDecoration(
                    labelText: "Description",
                    fillColor: Colors.white,
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue, width: 2.0)),
                  ),
                 
                ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  ElevatedButton(
                    onPressed: ()  async{
                      
                      await StudentInfo.add({
                        'name': namecontroller.text,
                        'Mobile Number': mobilecontroller.text,
                        'Address': addresscontroller.text,
                        'Description': descriptioncontroller.text,
                       
                      }).then((value) => print("added"));

                    },
                    child: const Text('Create'),
                  ),
  ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
