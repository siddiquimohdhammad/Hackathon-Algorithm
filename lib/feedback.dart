import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class FeedbackForm extends StatefulWidget {
  FeedbackForm({Key? key}) : super(key: key);

  @override
  State<FeedbackForm> createState() => _FeedbackFormState();
}

class _FeedbackFormState extends State<FeedbackForm> {
  CollectionReference StudentInfo = FirebaseFirestore.instance.collection('StudentInfo');


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
        title: Text("Feedback"),
        titleSpacing: 0,
        leading: Icon(
          
          Icons.feedback_rounded,
          color: Colors.white,
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
                            errorBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(4)),
                                borderSide: BorderSide(
                                  width: 1,
                                )),
                            hintText: 'Enter Name',
                            hintStyle: TextStyle(fontFamily: "Montserrat"),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(7))),
                  
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: TextFormField(
                  maxLength: 10,
                  keyboardType: TextInputType.number,
                  controller: mobilecontroller,
                  decoration: InputDecoration(
                            errorBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(4)),
                                borderSide: BorderSide(
                                  width: 1,
                                )),
                            hintText: 'Enter Phone Number',
                            hintStyle: TextStyle(fontFamily: "Montserrat"),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(7))),
                  
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: TextFormField(
                  maxLines: null,
                  controller: addresscontroller,
                  // obscureText: true,
                 decoration: InputDecoration(
                            errorBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(4)),
                                borderSide: BorderSide(
                                  width: 1,
                                )),
                            hintText: 'Enter Adress',
                            hintStyle: TextStyle(fontFamily: "Montserrat"),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(7))),
                  
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: TextFormField(
                  maxLines: null,
                  controller: descriptioncontroller,
                  // obscureText: true,
                  decoration: InputDecoration(
                            errorBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(4)),
                                borderSide: BorderSide(
                                  width: 1,
                                )),
                            hintText: 'Description',
                            hintStyle: TextStyle(fontFamily: "Montserrat"),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(7))),
                 
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
                    child: const Text('Submit'),
                  style: ElevatedButton.styleFrom(
    shape: BeveledRectangleBorder(
      borderRadius: BorderRadius.circular(12)
    ),
  ),
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
