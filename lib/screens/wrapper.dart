import 'package:foodapp_login/screens/authenticate/authenticate.dart';
import 'package:foodapp_login/screens/authenticate/sign_in.dart';
import 'package:foodapp_login/screens/home/home.dart';
import 'package:flutter/material.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    // return either the Home or Authenticate widget
    return Authenticate();
    
  }
}