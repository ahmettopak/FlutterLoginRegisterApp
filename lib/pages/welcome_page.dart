import 'package:flutter/material.dart';
import 'package:loginregister/pages/auth/login_page.dart';
import 'package:loginregister/pages/auth/register_page.dart';

import 'widget.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/fruzzBackground.png"),
              fit: BoxFit.cover),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Image.asset("images/Branding.png"),
              MainButton(
                  navigate: LoginPage(),
                  text: "Login",
                  color: Colors.black,
                  textColor: Colors.white),
              SizedBox(height: 30),
              MainButton(
                navigate: RegisterPage(),
                text: "Register",
                color: Colors.white,
                textColor: Colors.black,
              ),
              SizedBox(height: 30),
              LinkText(text: "Continue as a guest", color: Color(0xff35C2C1)),
            ],
          ),
        ),
      ),
    );
  }
}
