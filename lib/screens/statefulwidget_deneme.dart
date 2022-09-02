import 'package:flutter/material.dart';

class ButtonCount extends StatefulWidget {
  const ButtonCount({Key? key}) : super(key: key);

  @override
  State<ButtonCount> createState() => _ButtonCountState();
}

class _ButtonCountState extends State<ButtonCount> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: buildElevatedCountButton()),
    );
  }

  ElevatedButton buildElevatedCountButton() {
    return ElevatedButton(
        onPressed: () {
          count++;
          setState(() {});
        },
        child: Text("Hello " + count.toString()));
  }
}
