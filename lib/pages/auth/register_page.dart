import 'package:flutter/material.dart';
import 'package:loginregister/pages/auth/login_page.dart';
import 'package:loginregister/pages/welcome_page.dart';
import 'package:loginregister/pages/widget.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              pinned: true,
              backgroundColor: Colors.white,
              leading: IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => WelcomePage()),
                  );
                },
                icon: Icon(Icons.arrow_back_ios, color: Colors.black),
              ),
              floating: true,
            ),
          ];
        },
        body: ListView(
          padding: EdgeInsets.symmetric(horizontal: 20),
          scrollDirection: Axis.vertical,
          children: [
            buildTitle("Hello! Register to get started"),
            InputText(text: "Username"),
            Spacer(
              flex: 1,
            ),
            InputText(text: "E-mail"),
            PasswordsText(text: "Password"),
            PasswordsText(text: "Confirm Password"),
            MainButton(
                navigate: WelcomePage(),
                text: "Register",
                color: Colors.black,
                textColor: Colors.white),
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
                LinkText(
                    text: "Already have an account? ", color: Colors.black),
                TextButton(
                  child: LinkText(
                    text: "Login Now",
                    color: Color(0xff35C2C1),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginPage()),
                    );
                  },
                ),
              ],
            ),
          ],
        ),
        floatHeaderSlivers: true,
      ),
    );
  }
}
