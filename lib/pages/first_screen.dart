import 'package:flutter/material.dart';
import 'package:inspire/pages/second_screen.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Container(
      height: height,
      padding: EdgeInsets.only(left: 32.0, right: 32.0),
      decoration: BoxDecoration(color: Colors.pink),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => SecondScreen()));
        },
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Faith Practice",
                style: TextStyle(
                    fontSize: 22.0,
                    color: Colors.white,
                    decoration: TextDecoration.none),
              ),
              Padding(padding: EdgeInsets.only(bottom: 12.0)),
              Text(
                "shgifhghdfgdghdfghsfhdghdsfhgsdufgsdfghdsghudfshguhdfughudfhgudshgds",
                style: TextStyle(
                    fontSize: 14.0,
                    color: Colors.white,
                    decoration: TextDecoration.none),
              )
            ],
          ),
        ),
      ),
    );
  }
}
