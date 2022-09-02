import 'package:egitim_deneme/screens/fruzz_screens/login_screens_fruzz.dart';
import 'package:egitim_deneme/screens/fruzz_screens/register_screens_fruzz.dart';
import 'package:flutter/material.dart';

import 'fruzz_widget.dart';

class FruzzWelcome extends StatefulWidget {
  const FruzzWelcome({Key? key}) : super(key: key);

  @override
  State<FruzzWelcome> createState() => _FruzzWelcomeState();
}

class _FruzzWelcomeState extends State<FruzzWelcome> {
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
                navigate: FruzzLogin(),
                  text: "Login", color: Colors.black, textColor: Colors.white),
              SizedBox(height: 30),
              MainButton(
                navigate: FruzzRegister(),
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
