import 'package:flutter/material.dart';
import 'package:loginregister/pages/auth/register_page.dart';
import 'package:loginregister/pages/widget.dart';

class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({Key? key}) : super(key: key);

  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
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
                navigate: RegisterPage(),
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
