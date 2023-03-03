import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../navbar.dart';

class SignUpOrg extends StatefulWidget {
  @override
  _SignUpOrgState createState() => _SignUpOrgState();
}

class _SignUpOrgState extends State<SignUpOrg> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();
  final TextEditingController _OrganizationName = TextEditingController();

  FirebaseAuth _auth = FirebaseAuth.instance;
  FirebaseFirestore _firestore = FirebaseFirestore.instance;

  String _organizationName = '';
  String _email = '';
  String _password = '';

  void createUser({email, password, OrganizationName}) async {
    try {
      UserCredential userCredential = await _auth
          .createUserWithEmailAndPassword(email: email, password: password);

      // Store user data in Firestore
      await _firestore.collection('Organization').doc(userCredential.user!.uid).set({
        'username': OrganizationName,
        'email': email,
        'password': password,
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
              controller: _OrganizationName,
              decoration: InputDecoration(
                labelText: 'OrganizationName',
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
              child: Text('Sign UP'),
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
        _email = _emailController.text.trim();
        _password = _passwordController.text.trim();
        _organizationName = _OrganizationName.text.trim();

        createUser(email: _email, password: _password, OrganizationName: _OrganizationName);

        Navigator.push(
            context, MaterialPageRoute(builder: (context) => navBar()));
      } catch (e) {
        print(e.toString());
      }
    }
  }
}
