import 'package:egitim_deneme/screens/fruzz_screens/register_screens_fruzz.dart';
import 'package:flutter/material.dart';
import 'package:egitim_deneme/screens/fruzz_screens/fruzz_widget.dart';

class FruzzForgotPassword extends StatefulWidget {
  const FruzzForgotPassword({Key? key}) : super(key: key);

  @override
  State<FruzzForgotPassword> createState() => _FruzzForgotPasswordState();
}

class _FruzzForgotPasswordState extends State<FruzzForgotPassword> {
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
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            buildTitle("Forgot Password?"),
            Text(
              "Don't worry! It occurs. Please enter the email address linked with your account.",
              style: TextStyle(
                color: Colors.black54,
                fontSize: 16,
              ),
            ),
            SizedBox(height: 20),
            InputText(text: "Enter your Email"),
            SizedBox(height: 20),
            MainButton(
                navigate: FruzzRegister(),
                text: "Send Code",
                color: Colors.black,
                textColor: Colors.white),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                LinkText(text: "Remember Password? ", color: Colors.black),
                LinkText(text: " Login", color: Color(0xff35C2C1)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
