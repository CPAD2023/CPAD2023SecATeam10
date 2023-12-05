import 'package:foodapp_login/services/auth.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {

  final AuthService _auth = AuthService();

  final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
  foregroundColor: Colors.black87,
  backgroundColor: Colors.grey[300],
  minimumSize: Size(88, 36),
  padding: EdgeInsets.symmetric(horizontal: 16),
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(2)),
  ),
);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[100],
      appBar: AppBar(
        backgroundColor: Colors.brown[400],
        elevation: 0.0,
        title: Text('Sign in to Cook Book'),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
        child: ElevatedButton(
          style: raisedButtonStyle,
          onPressed: () async{dynamic result = await _auth.signInAnon();
            if(result == null){
              print('error signing in');
            } else {
              print('signed in');
              print(result);
            } },
          child: Text('Guest Login'),
        ),
        // child: But(
        //   child: Text('sign in anon'),
          // onPressed: () async {
          //   dynamic result = await _auth.signInAnon();
          //   if(result == null){
          //     print('error signing in');
          //   } else {
          //     print('signed in');
          //     print(result.uid);
          //   }
          // },
        // ),
      ),
    );
  }
}