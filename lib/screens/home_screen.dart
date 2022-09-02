import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      backgroundColor: Color(0xff2C2B34),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: Image.asset("images/main_car.png", scale: 1.2),
            padding: EdgeInsets.only(bottom: 10),
          ),
          HeaderWidget(text: "Premium cars."),
          HeaderWidget(text: "Enjoy the luxury"),
          SubtitleWidget(
              color: 0xff8E8E8E,
              text:
                  "Premium and prestige car daily rental. Experience the thrill at a lower price"),
          ButtonWidget(),
        ],
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
        title: Text("Deneme uygulamam"),
        leading: Icon(Icons.logo_dev_outlined),
        actions: [
          IconButton(
              onPressed: () {}, icon: Icon(Icons.phone_in_talk_outlined)),
          IconButton(onPressed: () {}, icon: Icon(Icons.message_outlined))
        ]);
  }
}

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
        onPressed: () {},
        child: Text(
          "Let's Go",
          style: TextStyle(color: Colors.black),
        ),
        style: ElevatedButton.styleFrom(
          primary: Color(0xffffffff),
          textStyle: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold,
              fontFamily: "Barlow"),
          padding: EdgeInsets.symmetric(vertical: 15)+ EdgeInsets.symmetric(horizontal: 100),
          shape: StadiumBorder()
        ),
      ),
      alignment: Alignment.bottomCenter,
      margin: EdgeInsets.symmetric(vertical: 40),
    );
  }
}

class SubtitleWidget extends StatelessWidget {
  const SubtitleWidget({
    Key? key,
    required this.text,
    required this.color,
  }) : super(key: key);
  final String text;
  final int color;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, top: 15),
      child: Text(
        text,
        style: TextStyle(
            fontFamily: "Barlow",
            fontSize: 15,
            fontWeight: FontWeight.bold,
            color: Color(color)),
      ),
    );
  }
}

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({
    Key? key,
    required this.text,
  }) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Text(text,
          style: TextStyle(
              fontFamily: "Barlow", fontSize: 35, fontWeight: FontWeight.bold)),
    );
  }
}
