import 'package:flutter/material.dart';
import 'package:loginregister/pages/auth/password_change_page.dart';
import 'package:loginregister/pages/widget.dart';

class ResetPasswordPage extends StatefulWidget {
  const ResetPasswordPage({Key? key}) : super(key: key);

  @override
  State<ResetPasswordPage> createState() => _ResetPasswordPageState();
}

class _ResetPasswordPageState extends State<ResetPasswordPage> {
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
            buildTitle("Create Password"),
            Text(
              "Your new password must be unique from those previously used.",
              style: TextStyle(
                color: Colors.black54,
                fontSize: 16,
              ),
            ),
            SizedBox(height: 20),
            InputText(text: "New Password"),
            SizedBox(height: 20),
            InputText(text: "Confirm Password"),
            SizedBox(height: 20),
            MainButton(
                navigate: PasswordChangePage(),
                text: "Reset Password",
                color: Colors.black,
                textColor: Colors.white),
          ],
        ),
      ),
    );
  }
}
