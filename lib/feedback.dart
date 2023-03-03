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
  TextEditingController studentidcontroller = new TextEditingController();
  TextEditingController programidcontroller = new TextEditingController();
  TextEditingController gpacontroller = new TextEditingController();
  TextEditingController mobilecontroller = new TextEditingController();

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
                  onChanged: (name) {
                    // getStudentName(name);
                    // Name=name;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: TextFormField(
                  controller: studentidcontroller,
                  decoration: InputDecoration(
                    labelText: "Student ID",
                    fillColor: Colors.white,
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue, width: 2.0)),
                  ),
                  onChanged: (id) {
                    // getStudentID(id);
                    // SId=id;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: TextFormField(
                  controller: programidcontroller,
                  // obscureText: true,
                  decoration: InputDecoration(
                    labelText: "Student Program ID",
                    fillColor: Colors.white,
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue, width: 2.0)),
                  ),
                  onChanged: (programID) {
                    // getStudyProgramID(programID);
                    // Programid=programID;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  maxLength: 4,
                  controller: gpacontroller,
                  // obscureText: true,
                  decoration: InputDecoration(
                    labelText: "GPA",
                    fillColor: Colors.white,
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue, width: 2.0)),
                  ),
                  onChanged: (Sgpa) {
                    // getStudentGPA(gpa);
                    // gpa=Sgpa;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: TextFormField(
                  maxLength: 10,
                  controller: mobilecontroller,
                  keyboardType: TextInputType.number,
                  // obscureText: true,
                  decoration: InputDecoration(
                    labelText: "Added Mobile number",
                    fillColor: Colors.white,
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue, width: 2.0)),
                  ),
                  onChanged: (mnum) {
                    // getStudentGPA(gpa);
                    // Mobnum=mnum;
                  },
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  ElevatedButton(
                    onPressed: ()  async{
                      // createData();
                      await StudentInfo.add({
                        'name': namecontroller.text,
                        'Stduent Id': studentidcontroller.text,
                        'Program Id': programidcontroller.text,
                        'GPA': gpacontroller.text,
                        'Mobile Number': mobilecontroller.text,
                        //   'name:':Name,
                        //   'Student ID':SId,
                        //   "Program ID":Programid,
                        //   "Student GPA":gpa,
                        //   "Mobile Number":Mobnum,
                      }).then((value) => print("added"));

                      // Map<String,String> dataToSave={
                      //   'name':namecontroller.text,
                      //   'Stduent Id': studentidcontroller.text,
                      //   'Program Id': programidcontroller.text,
                      //   'GPA': gpacontroller.text,
                      //   'Mobile Number': mobilecontroller.text,
                      
                      // };
                      // FirebaseFirestore.instance.collection('StudentInfo').add(dataToSave);
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
