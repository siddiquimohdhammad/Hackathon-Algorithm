import 'package:farmerconnect/navbar2.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '../navbar.dart';

class SignUpOrg extends StatefulWidget {
  @override
  _SignUpOrgState createState() => _SignUpOrgState();
}

class _SignUpOrgState extends State<SignUpOrg> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _organizationNameController =
      TextEditingController();

  FirebaseAuth _auth = FirebaseAuth.instance;
  FirebaseFirestore _firestore = FirebaseFirestore.instance;

  String _email = '';
  String _password = '';
  String _organizationName = '';

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
                if (input!.isEmpty) {
                  return 'Please enter your organization name';
                }
                return null;
              },
              controller: _organizationNameController,
              decoration: InputDecoration(
                labelText: 'Organization Name',
              ),
            ),
            ElevatedButton(
              onPressed: () {
                SignUp1();
              },
              child: Text('Sign UP'),
            ),
          ],
        ),
      ),
    );
  }

  void SignUp1() async {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();

      try {
        _email = _emailController.text.trim();
        _password = _passwordController.text.trim();
        _organizationName = _organizationNameController.text.trim();
        UserCredential userCredential = await _auth
            .createUserWithEmailAndPassword(email: _email, password: _password);

        await _firestore.collection('Agency').doc(userCredential.user!.uid).set({
          'email': _email,
          'organizationName': _organizationName,
        });

        Navigator.push(
            context, MaterialPageRoute(builder: (context) => navBar2()));
      } catch (e) {
        print(e.toString());
      }
    }
  }
}
