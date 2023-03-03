import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'feebback.dart';
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
    );
  }
}
