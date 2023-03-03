import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '../navbar2.dart';


class temporg extends StatefulWidget {
  @override
  _temporgState createState() => _temporgState();
}

class _temporgState extends State<temporg> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _orgNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();

  FirebaseAuth _auth = FirebaseAuth.instance;
  FirebaseFirestore _firestore = FirebaseFirestore.instance;

  String _orgName = '';
  String _email = '';
  String _password = '';
  String _confirmPassword = '';

  createUser({orgName, email, password}) async {
    try {
      UserCredential userCredential = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);

      await _firestore.collection('Agency').doc(userCredential.user!.uid).set({
        'orgName': orgName,
        'email': email,
        'password': password
      });
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Form(
        key: _formKey,
        child: Column(
          children: <Widget>[
            TextFormField(
              validator: (input) {
                if (input!.isEmpty) {
                  return 'Please enter your organization name';
                }
                return null;
              },
              controller: _orgNameController,
              decoration: InputDecoration(
                labelText: 'Organization Name',
              ),
            ),
            TextFormField(
              validator: (input) {
                if (input!.isEmpty) {
                  return 'Please enter your email';
                }
                return null;
              },
              controller: _emailController,
              decoration: InputDecoration(
                labelText: 'Email',
              ),
            ),
            TextFormField(
              validator: (input) {
                if (input!.length < 6) {
                  return 'Your password must be at least 6 characters';
                }
                return null;
              },
              controller: _passwordController,
              decoration: InputDecoration(
                labelText: 'Password',
              ),
              obscureText: true,
            ),
            TextFormField(
              validator: (input) {
                if (input != _passwordController.text) {
                  return 'Passwords do not match';
                }
                return null;
              },
              controller: _confirmPasswordController,
              decoration: InputDecoration(
                labelText: 'Confirm Password',
              ),
              obscureText: true,
            ),
            ElevatedButton(
              onPressed: () {
                signUp();
              },
              child: Text('Sign Up'),
            ),
          ],
        ),
      ),
    );
  }

  void signUp() async {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();

      try {
        _orgName = _orgNameController.text.trim();
        _email = _emailController.text.trim();
        _password = _passwordController.text.trim();
        _confirmPassword = _confirmPasswordController.text.trim();

        createUser(
            orgName: _orgName, email: _email, password: _password);

        Navigator.push(
            context, MaterialPageRoute(builder: (context) => navBar2()));
      } catch (e) {
        print(e.toString());
      }
    }
  }
}
