import 'package:flutter/material.dart';

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
        elevation: 0.0,
        backgroundColor: Colors.transparent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Text("Login"),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "E-Mail",
                    style: TextStyle(fontSize: 20),
                  ),
                  style: ElevatedButton.styleFrom(primary: Colors.deepOrange),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "Phone",
                    style: TextStyle(fontSize: 20),
                  ),
                  style: ElevatedButton.styleFrom(primary: Colors.deepOrange),
                ),
              ],
            ),
            
            TextField(
              decoration: InputDecoration(border: OutlineInputBorder(),labelText: "E-Mail",prefixIcon: Icon(Icons.email_outlined)),
            ),
            TextField(
              decoration: InputDecoration(border: OutlineInputBorder(),labelText: "Phone", prefixIcon: Icon(Icons.phone)),
            )
          ],
        ),
      ),
    );
  }
}
