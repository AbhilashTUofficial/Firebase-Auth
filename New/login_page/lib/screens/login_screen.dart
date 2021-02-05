import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'file:///C:/programming/GitHub/Firebase-Auth/New/login_page/lib/Palette/PageBackground.dart';
import 'package:login_page/Widgets/enterEmail.dart';
import 'package:login_page/Widgets/enterPassword.dart';
import 'package:login_page/Widgets/forgotPassword.dart';
import 'package:login_page/Widgets/loginButton.dart';
import 'package:login_page/Widgets/logoSpace.dart';
import 'package:login_page/Widgets/rememberMeCheckbox.dart';
import 'package:login_page/Palette/constants.dart';
import 'package:login_page/screens/signup_screen.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  Widget _newUser() {
    return GestureDetector(
      child: Text(
        'New user ?',
        style: labelStyle,
      ),
      onTap: ()=>{
        print("New user Clicked")
        //Navigator.pushReplacementNamed()
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Stack(
            children: <Widget>[
              BackgroundGradient(),
              Container(
                //height: double.infinity,
                child: SingleChildScrollView(
                  physics: AlwaysScrollableScrollPhysics(),
                  padding: EdgeInsets.symmetric(
                    horizontal: 40.0,
                    vertical: 100.0,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      //SizedBox(height: 60),
                      LogoSpace(),
                      SizedBox(height: 20.0),
                      EnterEmail(),
                      SizedBox(height: 20.0),
                      EnterPassword(),
                      ForgotPassword(),
                      RememberMeCheckbox(),
                      LoginButton(),
                      _newUser(),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
