import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class FeedbackForm extends StatefulWidget {
  const FeedbackForm({super.key});

  @override
  State<FeedbackForm> createState() => _FeedbackFormState();
}

class _FeedbackFormState extends State<FeedbackForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // centerTitle: true,
        titleSpacing: 0,
        leading: Icon(
          Icons.account_circle_outlined,
          color: Colors.black,
          size: MediaQuery.of(context).size.height * 0.05,
        ),
      ),
      body: Container(
        height: 5000,
        color: Colors.yellow,
      ),
    );
  }
}