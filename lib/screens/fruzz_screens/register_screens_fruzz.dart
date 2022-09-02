import 'package:egitim_deneme/screens/fruzz_screens/fruzz_widget.dart';
import 'package:flutter/material.dart';

class FruzzRegister extends StatefulWidget {
  const FruzzRegister({Key? key}) : super(key: key);

  @override
  State<FruzzRegister> createState() => _FruzzRegisterState();
}

class _FruzzRegisterState extends State<FruzzRegister> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back_ios, color: Colors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            buildTitle("Hello! Register to get started"),
            InputText(text: "Username"),
            InputText(text: "E-mail"),
            InputText(text: "Password"),
            InputText(text: "Confirm Password"),
            MainButton(
                text: "Register", color: Colors.black, textColor: Colors.white),
            DividerText(text: "Or Register With"),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                OtherButton(image: "images/icons/facebook_ic.png"),
                OtherButton(image: "images/icons/google_ic.png"),
                OtherButton(image: "images/icons/apple_ic.png"),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                LinkText(text: "Already have an account? ", color: Colors.black),
                LinkText(text: "Login Now", color: Color(0xff35C2C1)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
