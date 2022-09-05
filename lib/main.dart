import 'package:egitim_deneme/screens/fruzz_screens/welcome_screens_fruzz.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Deneme',
      theme: ThemeData.light().copyWith(
        appBarTheme: AppBarTheme(
            centerTitle: true,
            backgroundColor: Colors.transparent,
            elevation: 0),
      ),
      home: FruzzWelcome(),
    );
  }
}
