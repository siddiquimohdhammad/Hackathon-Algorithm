import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:url_launcher/url_launcher.dart';

import 'feedback.dart';
// import 'feedback.dart';

class conatctUs extends StatefulWidget {
  const conatctUs({Key? key}) : super(key: key);

  @override
  State<conatctUs> createState() => _conatctUsState();
}

class _conatctUsState extends State<conatctUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green.shade500,
        leading: Icon(Icons.contact_page_rounded),
        title: Text("Contact Us"),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => FeedbackForm()));
                // Navigator.pushNamed(context, 'Feedback');
              },
              icon: Icon(Icons.feedback_outlined))
        ],
      ),

      //  body: InkWell(
      //   onTap:(){
      //     // ignore: deprecated_member_use
      //     launch("tel://1800-180-1551");

      //   },
         body: Padding(
           padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 8),
           child: ListView(
             children:[
               Container(
                padding:EdgeInsets.all(10),
                      alignment: Alignment.topLeft,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Kisan Call center",
                            style: TextStyle(fontSize: 20),
                          ),
                          IconButton(onPressed: (){
                            // ignore: deprecated_member_use
                            launch("tel://1800-3000-9696");
                            
                          }, icon: Icon(Icons.call)),
                        ],
                      ),
                      
                      decoration: BoxDecoration(
                        gradient: LinearGradient(colors: [
                          Color.fromARGB(255, 189, 255, 7),
                          Colors.green.shade200,
                        ]),
                        color: Colors.brown,
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    
                    SizedBox(
          height: 10,
        ),
                    Container(
                      padding:EdgeInsets.all(10),
                      alignment: Alignment.topLeft,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "National Horticulture Board",
                            style: TextStyle(fontSize: 20),
                          ),
                          IconButton(onPressed: (){
                            // ignore: deprecated_member_use
                            launch("tel://1800-3000-9696");
                            
                          }, icon: Icon(Icons.call)),
                        ],
                      ),
                      
                      decoration: BoxDecoration(
                        gradient: LinearGradient(colors: [
                          Color.fromARGB(255, 189, 255, 7),
                          Colors.green.shade200,
                        ]),
                        color: Colors.brown,
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
   SizedBox(
          height: 10,
        ),
                    Container(
                      padding:EdgeInsets.all(10),
                      alignment: Alignment.center,
                      child: Row(
                        children: [
                          Flexible(
                            child: Text(
                              "Agricultural Marketing and Farm Friendly Scheme",
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                          IconButton(onPressed: (){
                            // ignore: deprecated_member_use
                            launch("tel://1800-3000-9696");
                            
                          }, icon: Icon(Icons.call)),
                        ],
                      ),
                      
                      decoration: BoxDecoration(
                        gradient: LinearGradient(colors: [
                          Color.fromARGB(255, 189, 255, 7),
                          Colors.green.shade200,
                        ]),
                        color: Colors.brown,
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
   SizedBox(
          height: 10,
        ),
                    Container(
                      padding:EdgeInsets.all(10),
                      alignment: Alignment.center,
                      child: Row(
                        children: [
                          Flexible(
                            child: Text(
                              "Pradhan Mantri Fasal Bima Yojana",
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                          IconButton(onPressed: (){
                            // ignore: deprecated_member_use
                            launch("tel://1800-3000-9696");
                            
                          }, icon: Icon(Icons.call)),
                        ],
                      ),
                      
                      decoration: BoxDecoration(
                        gradient: LinearGradient(colors: [
                          Color.fromARGB(255, 189, 255, 7),
                          Colors.green.shade200,
                        ]),
                        color: Colors.brown,
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),

                    ]
           ),
         ),
       );
      // body: Padding(
      //   padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      //   child: Column(
      //     children: [
      //       SizedBox(
      //         width: 200.0,
      //         height: 100.0,
      //         child: ElevatedButton(
      //           // ignore: deprecated_member_use
      //           onPressed: () => launch("tel://1800-180-1551"),
      //           child: Text(
      //             'Kisan Call Center',
      //             style: TextStyle(
      //               fontSize: 20,
      //             ),
      //           ),
      //         ),
      //       ),
      //       SizedBox(
      //         width: 200.0,
      //         height: 100.0,
      //         child: ElevatedButton(
      //           // ignore: deprecated_member_use
      //           onPressed: () => launch("tel://1800-3000-9696"),
      //           child: Text(
      //             'National Horticulture Board -',
      //             style: TextStyle(
      //               fontSize: 20,
      //             ),
      //           ),
      //         ),
      //       ),
      //       SizedBox(
      //         width: 200.0,
      //         height: 100.0,
      //         child: ElevatedButton(
      //           // ignore: deprecated_member_use
      //           onPressed: () => launch("tel://1800-180-1551:"),
      //           child: Text(
      //             'Agricultural Marketing and Farm Friendly Scheme',
      //             style: TextStyle(
      //               fontSize: 20,
      //             ),
      //           ),
      //         ),
      //       ),
      //       SizedBox(
      //         width: 200.0,
      //         height: 100.0,
      //         child: ElevatedButton(
      //           // ignore: deprecated_member_use
      //           onPressed: () => launch("tel://1800-111-900"),
      //           child: Text(
      //             'Pradhan Mantri Fasal Bima Yojana',
      //             style: TextStyle(
      //               fontSize: 20,
      //             ),
      //           ),
      //         ),
      //       ),
      //       ElevatedButton(
      //         // ignore: deprecated_member_use
      //         onPressed: () => launch("tel://1800-180-1551"),
      //         child: Text(
      //           'Kisan Call Center',
      //           style: TextStyle(
      //             fontSize: 20,
      //           ),
      //         ),
      //       ),
      //     ],
      //   ),
      // ),
  }
}
