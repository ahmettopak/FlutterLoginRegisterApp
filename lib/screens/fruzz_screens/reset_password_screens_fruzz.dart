import 'package:egitim_deneme/screens/fruzz_screens/register_screens_fruzz.dart';
import 'package:flutter/material.dart';
import 'package:egitim_deneme/screens/fruzz_screens/fruzz_widget.dart';

class FruzzResetPassword extends StatefulWidget {
  const FruzzResetPassword({Key? key}) : super(key: key);

  @override
  State<FruzzResetPassword> createState() => _FruzzResetPasswordState();
}

class _FruzzResetPasswordState extends State<FruzzResetPassword> {
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
                navigate: FruzzRegister(),
                text: "Reset Password",
                color: Colors.black,
                textColor: Colors.white),


          ],
        ),
      ),
    );
  }
}




