import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../navbar.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  FirebaseAuth _auth = FirebaseAuth.instance;

  String _email = '';
  String _password = '';

  createUser({email,password})
  async {
   try {UserCredential userCredential = await _auth.createUserWithEmailAndPassword(email: email, password: password);}
   catch(e)
   {
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
            ElevatedButton(
              onPressed: () {
                signIn();
              },
              child: Text('Sign in'),
            ),
          ],
        ),
      ),
    );
  }

  void signIn() async {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();

      try {
        _email = _emailController.text.trim();
        _password = _passwordController.text.trim();
        createUser(email: _email,password: _password);

        Navigator.push(
            context, MaterialPageRoute(builder: (context) => navBar()));
      } catch (e) {
        print(e.toString());
      }
    }
  }
}




/*
final formkey = GlobalKey<FormState>();
  return Container(
    child: Form(
        key: formkey,
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
              controller: _emailControllor,
              decoration: InputDecoration(hintText: "Email"),
              validator: (value) {
                if (value!.isEmpty) return 'Email required';
              },
            ),
            TextFormField(
              controller: _passwordControllor,
              decoration: InputDecoration(hintText: "Password"),
              validator: (value) {
                if (value!.isEmpty) return 'password required';
              },
            ),
            IconButton(
                onPressed: () {
                  if (formkey.currentState!.validate()){
                    createUser();
                  
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => navBar()));}
                },
                icon: Icon(Icons.done)),
          ],
        )),
  );
 */