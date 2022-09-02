import 'package:flutter/material.dart';

import 'fruzz_widget.dart';

class FruzzLogin extends StatefulWidget {
  const FruzzLogin({Key? key}) : super(key: key);

  @override
  State<FruzzLogin> createState() => _FruzzLoginState();
}

class _FruzzLoginState extends State<FruzzLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //IconButton(
        //   onPressed: () {},
        //   icon: Icon(Icons.arrow_back_ios, color: Colors.black),
        //   padding: EdgeInsets.only(top: 10),
        // ),
        // leading: ElevatedButton(
        //   onPressed: () {},
        //   child: Icon(Icons.arrow_back_ios, color: Colors.black),
        //   style: ElevatedButton.styleFrom(
        //     primary: Colors.transparent,
        //     elevation: 0,
        //     shape: RoundedRectangleBorder(
        //       side: BorderSide(width: 1, color: Colors.black26),
        //       borderRadius: BorderRadius.circular(20),
        //     ),
        //   ),
        // ),
        leading: BackButton(),

        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 50),
              child: buildTitle("Welcome back! Glad to see you, Again!"),
            ),
            SizedBox(
              height: 40,
            ),
            Column(
              children: [
                InputText(
                  text: "E-mail",
                ),
                SizedBox(
                  height: 20,
                ),
                InputText(
                  text: "Password",
                  right_icon: Icon(Icons.remove_red_eye_outlined),
                ),
                SizedBox(
                  height: 15,
                ),
                Align(
                  child:
                      LinkText(text: "Forgot Password?", color: Colors.black),
                  alignment: Alignment.centerRight,
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            MainButton(
                text: "Login", color: Colors.black, textColor: Colors.white),
            DividerText(text: "Or Login with"),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,

              children: [
                Flexible(
                  flex: 1,
                  child: OtherButton(
                    image: "images/icons/facebook_ic.png",
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: OtherButton(
                    image: "images/icons/google_ic.png",
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: OtherButton(
                    image: "images/icons/apple_ic.png",
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                LinkText(text: "Don’t have an account?", color: Colors.black),
                LinkText(text: " Register Now", color: Color(0xff35C2C1)),
              ],
            ),
          ],
        ),
      ),
    );
  }


}

class BackButton extends StatelessWidget {
  const BackButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {},
        icon: Icon(Icons.arrow_back_ios, color: Colors.black));
  }
}

