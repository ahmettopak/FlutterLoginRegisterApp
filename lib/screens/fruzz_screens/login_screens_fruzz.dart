import 'package:egitim_deneme/screens/fruzz_screens/register_screens_fruzz.dart';
import 'package:egitim_deneme/screens/fruzz_screens/reset_password_screens_fruzz.dart';
import 'package:flutter/material.dart';

import 'fruzz_widget.dart';
import 'welcome_screens_fruzz.dart';

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
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => FruzzWelcome()),
            );
          },
          icon: Icon(Icons.arrow_back_ios, color: Colors.black),
        ),
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
                      TextButton(child: LinkText(text: "Forgot Password?", color: Colors.black),onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => FruzzResetPassword()),
                        );
                      }),
                  alignment: Alignment.centerRight,
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            MainButton(
              navigate: FruzzWelcome(),
                text: "Login",
                color: Colors.black,
                textColor: Colors.white),
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
                TextButton(
                  child: LinkText(
                    text: " Register Now",
                    color: Color(0xff35C2C1),
                  ),
                  style: TextButton.styleFrom(
                      elevation: 0, backgroundColor: Colors.transparent),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => FruzzRegister()),
                    );
                  },
                ),
              ],
            ),
            // ElevatedButton(
            //     onPressed: () {
            //       NewWidget();
            //     },
            //     child: null)
          ],
        ),
      ),
    );
  }
}

// class ShowDialog extends StatelessWidget {
//   const ShowDialog({
//     Key? key,
//   }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return AlertDialog(
//       title: const Text('AlertDialog Title'),
//       content: const Text('AlertDialog description'),
//       actions: <Widget>[
//         TextButton(
//           onPressed: () => Navigator.pop(context, 'OK'),
//           child: const Text('OK'),
//         ),
//       ],
//     );
//   }
// }
