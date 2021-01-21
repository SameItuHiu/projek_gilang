import 'package:flutter/material.dart';

// Form Error
final RegExp emailValidatorRegExp =
    RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
const String kEmailNullError = "Please Enter your email";
const String kInvalidEmailError = "Please Enter Valid Email";
const String kPassNullError = "Please Enter your password";
const String kShortPassError = "Password is too short";
const String kMatchPassError = "Passwords don't match";
const String kNamelNullError = "Please Enter your name";
const String kPhoneNumberNullError = "Please Enter your phone number";
const String kAddressNullError = "Please Enter your address";

// Color
const PrimaryColor = Color(0xFF4C4C4C);
const BgLogin = Color(0xFF666666);
const SecondColor = Color(0xFF424242);
const PrimaryGradientColor = LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    colors: [Color(0xFFB28346), Color(0xFFFEECCA), Color(0xFFFFDD88)]);

const InputFormGradient = LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    colors: [Color(0xFFD8A25C), Color(0xFFFFDD88), Color(0xFFFEECCA)]);
