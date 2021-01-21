import 'package:flutter/material.dart';
import 'package:projek_gilang/constants.dart';
import 'package:projek_gilang/sign_in/components/sign_in_screen.dart';

class SignIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('MASUK'),
        textTheme: TextTheme(
            headline6: TextStyle(
          color: Color(0XFF4C4C4C),
          fontSize: 14,
          fontFamily: 'Roboto',
        )),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: SignInScreen(),
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
    );
  }
}
