import 'package:flutter/material.dart';
import 'package:projek_gilang/sign_in/components/sign_in_screen.dart';
import 'package:projek_gilang/sign_in/sign_in.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: SignIn(),
    );
  }
}
