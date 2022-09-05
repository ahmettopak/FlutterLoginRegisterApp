import 'package:egitim_deneme/screens/fruzz_screens/welcome_screens_fruzz.dart';
import 'package:flutter/material.dart';

class OtherButton extends StatelessWidget {
  const OtherButton({Key? key, required this.image}) : super(key: key);
  final String image;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Padding(
        padding: const EdgeInsets.all(5),
        child: Image.asset(
          image,
          width: 70,
          height: 30,
        ),
      ),
      style: ElevatedButton.styleFrom(
          primary: Colors.transparent,
          elevation: 0,
          side: BorderSide(
            color: Colors.black,
          )),
    );
  }
}

class DividerText extends StatelessWidget {
  const DividerText({
    Key? key,
    required this.text,
  }) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Divider(
            height: 30,
            color: Colors.black,
            thickness: 2,
          ),
        ),
        Text("  $text   "),
        Expanded(
          child: Divider(
            height: 30,
            color: Colors.black,
            thickness: 2,
          ),
        ),
      ],
    );
  }
}

class InputText extends StatelessWidget {
  const InputText({
    Key? key,
    required this.text,
    this.left_icon,
    this.right_icon,
  }) : super(key: key);
  final left_icon;
  final right_icon;
  final String text;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: TextStyle(backgroundColor: Color(0xF7F8F9)),
      decoration: InputDecoration(
        prefixIcon: left_icon,
        suffixIcon: right_icon,

        labelText: text,
        // filled: true,
        // fillColor: Color(0xFF707070),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}

class LinkText extends StatelessWidget {
  const LinkText({
    Key? key,
    required this.text,
    required this.color,
  }) : super(key: key);
  final String text;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        decoration: TextDecoration.underline,
      ),
      textAlign: TextAlign.center,
    );
  }
}

class MainButton extends StatelessWidget {
  const MainButton(
      {Key? key,
        required this.text,
        required this.color,
        required this.textColor,
        required this.navigate,

      })
      : super(key: key);
  final Color color;
  final Color textColor;
  final String text;
  final navigate;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => navigate),
        );
      },

      child: Text(

        text,
        style: TextStyle(color: textColor,fontSize: 15, fontWeight: FontWeight.bold),
      ),
      style: ElevatedButton.styleFrom(
          primary: color,
          padding: EdgeInsets.all(20),
          shape: RoundedRectangleBorder(
            side: BorderSide(color: Colors.black, width: 1),
            borderRadius: BorderRadius.circular(8),
          ),
          // fixedSize: Size(10, 50)
      ),
    );
  }
}

// class BackButton extends StatelessWidget {
//   const BackButton({
//     Key? key,
//   }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return IconButton(
//         onPressed: () {},
//         icon: Icon(Icons.arrow_back_ios, color: Colors.black));
//   }
// }

Text buildTitle(String text) => Text(
  text,
  textAlign: TextAlign.start,
  softWrap: true,
  style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
);
