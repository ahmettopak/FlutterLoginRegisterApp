import 'package:flutter/material.dart';
import 'package:loginregister/pages/auth/login_page.dart';
import 'package:loginregister/pages/widget.dart';

class PasswordChangePage extends StatefulWidget {
  const PasswordChangePage({Key? key}) : super(key: key);

  @override
  State<PasswordChangePage> createState() => _PasswordChangePageState();
}

class _PasswordChangePageState extends State<PasswordChangePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: Image.asset("images/done_ic.png",
                      alignment: Alignment.center),
                ),
                Text(
                  "Password Changed!",
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Your password has been changed successfully.",
                  style: TextStyle(fontSize: 15, color: Colors.black26),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            MainButton(
                navigate: LoginPage(),
                text: "Back To login",
                color: Colors.black,
                textColor: Colors.white)
          ],
        ),
      ),
    );
  }
}
