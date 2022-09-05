import 'package:egitim_deneme/screens/fruzz_screens/login_screens_fruzz.dart';
import 'package:egitim_deneme/screens/fruzz_screens/register_screens_fruzz.dart';
import 'package:flutter/material.dart';

import 'fruzz_widget.dart';

class FruzzPasswordChange extends StatefulWidget {
  const FruzzPasswordChange({Key? key}) : super(key: key);

  @override
  State<FruzzPasswordChange> createState() => _FruzzPasswordChangeState();
}

class _FruzzPasswordChangeState extends State<FruzzPasswordChange> {
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
                  child: Image.asset("images/done_ic.png",alignment: Alignment.center),
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
                  style: TextStyle(fontSize: 15,color: Colors.black26),
                ),
              ],
            ),
            SizedBox(height: 20,),
            MainButton(
                navigate: FruzzLogin(),
                text: "Back To login",
                color: Colors.black,
                textColor: Colors.white)
          ],
        ),
      ),
    );
  }
}
