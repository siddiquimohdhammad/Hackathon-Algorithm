import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../navbar.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  FirebaseAuth auth = FirebaseAuth.instance;

  loginUser({email, password}) async {
    try {
      await auth.signInWithEmailAndPassword(email: email, password: password);
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Form(
            child: Column(
      children: [
        Text('data'),
        TextFormField(
          decoration: InputDecoration(hintText: "Name"),
          validator: (value) {
            if (value!.isEmpty) return 'Name';
          },
        ),
        TextFormField(
          controller: emailController,
          decoration: InputDecoration(hintText: "Email"),
          validator: (value) {
            if (value!.isEmpty) return 'Email required';
          },
        ),
        Center(
          child: TextFormField(
            controller: passwordController,
            decoration: InputDecoration(hintText: "Password"),
            validator: (value) {
              if (value!.isEmpty) return 'password required';
            },
          ),
        ),
        IconButton(
            onPressed: () async {
              await loginUser(
                  email: emailController, password: passwordController);
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => navBar()));
            },
            icon: Icon(Icons.done)),
      ],
    )));
  }
}
