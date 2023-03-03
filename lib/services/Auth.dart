import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../navbar.dart';
import 'Login.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  FirebaseAuth _auth = FirebaseAuth.instance;

  String _email = '';
  String _password = '';

  createUser({email, password}) async {
    try {
      UserCredential userCredential = await _auth
          .createUserWithEmailAndPassword(email: email, password: password);
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
                SignUp();
              },
              child: Text('Sign UP'),
            ),
            IconButton(
              onPressed: () {
             signIns(context);
              },
              icon: Icon(Icons.abc),
            ),
          ],
        ),
      ),
    );
  }

  void SignUp() async {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();

      try {
        _email = _emailController.text.trim();
        _password = _passwordController.text.trim();
        createUser(email: _email, password: _password);

        Navigator.push(
            context, MaterialPageRoute(builder: (context) => navBar()));
      } catch (e) {
        print(e.toString());
      }
    }
  }
}



 Widget signIns(BuildContext context) {
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
    return Container(
        child: Form(
            child: Column(
      children: [
        Text('data'),
        TextFormField(
          decoration: InputDecoration(hintText: "Name"),
        ),
        TextFormField(
          controller: emailController,
          decoration: InputDecoration(hintText: "Email"),
        ),
        Center(
          child: TextFormField(
            controller: passwordController,
            decoration: InputDecoration(hintText: "Password"),
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
