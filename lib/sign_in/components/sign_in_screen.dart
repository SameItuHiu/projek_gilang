import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gradient_input_border/gradient_input_border.dart';
import 'package:projek_gilang/constants.dart';
import 'package:projek_gilang/size_config.dart';

class SignInScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    final logo = Hero(
      tag: 'hero',
      child: CircleAvatar(
        backgroundColor: Colors.transparent,
        radius: 48.0,
        child: SvgPicture.asset("assets/images/logo.svg"),
      ),
    );

    final email = TextFormField(
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      decoration: InputDecoration(
        hintText: 'Email',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: GradientOutlineInputBorder(
          focusedGradient: InputFormGradient,
          unfocusedGradient: InputFormGradient,
          borderRadius: BorderRadius.circular(32.0),
        ),
      ),
    );

    final password = TextFormField(
      autofocus: false,
      obscureText: true,
      decoration: InputDecoration(
        hintText: 'Password',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: GradientOutlineInputBorder(
          focusedGradient: InputFormGradient,
          unfocusedGradient: InputFormGradient,
          borderRadius: BorderRadius.circular(32.0),
        ),
      ),
    );

    final loginWith = Container(
      alignment: Alignment.center,
      child: Text(
        'Lupa Password?',
        style: TextStyle(
          color: Color(0xFF7192E5),
          fontSize: 12.0,
          fontWeight: FontWeight.w400,
          fontFamily: 'Roboto',
        ),
      ),
    );

    final atau = Row(
      children: <Widget>[
        Container(
          child: Text(
            '-',
            style: TextStyle(
              color: Color(0xFFC3BEBE),
              fontSize: 12.0,
              fontWeight: FontWeight.w400,
              fontFamily: 'Roboto',
            ),
          ),
        ),
        Container(
          child: Text(
            ' Atau ',
            style: TextStyle(
              color: Color(0xFFC3BEBE),
              fontSize: 12.0,
              fontWeight: FontWeight.w400,
              fontFamily: 'Roboto',
            ),
          ),
        ),
        Container(
          child: Text(
            '-',
            style: TextStyle(
              color: Color(0xFFC3BEBE),
              fontSize: 12.0,
              fontWeight: FontWeight.w400,
              fontFamily: 'Roboto',
            ),
          ),
        ),
      ],
    );

    final loginButton = RaisedButton(
      textColor: Colors.white,
      elevation: 3.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(100.0),
      ),
      child: Container(
        decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100.0),
          ),
          gradient: LinearGradient(colors: <Color>[
            Color(0xffD8A25C),
            Color(0xffFFDD88),
            Color(0xffFEECCA)
          ]),
        ),
        padding: EdgeInsets.fromLTRB(19.0, 4.0, 19.0, 4.0),
        child: Text(
          'LOGIN',
          style: TextStyle(
            color: Color(0xFF4C4C4C),
            letterSpacing: 1.5,
            fontSize: 18.0,
            fontWeight: FontWeight.w500,
            fontFamily: 'Roboto',
          ),
        ),
      ),
      onPressed: () {},
    );

    return Stack(
      children: <Widget>[
        SvgPicture.asset(
          "assets/images/background_login.svg",
          //alignment: Alignment.center,
          fit: BoxFit.fitWidth,
          color: Color(0XFF666666).withOpacity(0.15),
        ),
        Container(
          padding: EdgeInsets.fromLTRB(
            getProportionateScreenHeight(20),
            getProportionateScreenHeight(14),
            getProportionateScreenHeight(20),
            getProportionateScreenHeight(20),
          ),
          child: ListView(
            shrinkWrap: true,
            children: <Widget>[
              logo,
              SizedBox(height: getProportionateScreenHeight(57)),
              email,
              SizedBox(height: getProportionateScreenHeight(28)),
              password,
              SizedBox(height: getProportionateScreenHeight(42)),
              loginButton,
              SizedBox(height: getProportionateScreenHeight(22)),
              loginWith,
              SizedBox(height: getProportionateScreenHeight(30)),
              atau,
            ],
          ),
        ),
      ],
    );
  }
}
