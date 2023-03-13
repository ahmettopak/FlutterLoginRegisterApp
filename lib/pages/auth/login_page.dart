import 'package:flutter/material.dart';
import 'package:loginregister/pages/auth/register_page.dart';
import 'package:loginregister/pages/auth/reset_password_page.dart';
import 'package:loginregister/pages/welcome_page.dart';
import 'package:loginregister/pages/widget.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => WelcomePage()),
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
                  child: TextButton(
                      child: LinkText(
                          text: "Forgot Password?", color: Colors.black),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ResetPasswordPage()),
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
                navigate: WelcomePage(),
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
                      MaterialPageRoute(builder: (context) => RegisterPage()),
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
