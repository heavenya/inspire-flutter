import 'package:flutter/material.dart';
import 'dart:math';

class BaseScreen extends StatefulWidget {
  @override
  State<BaseScreen> createState() => _BaseScreenState();
}

class _BaseScreenState extends State<BaseScreen> {
  List<Map<String, dynamic>> quotes = [
    {
      "title": "Faith Practice",
      "description":
          "Help out a stranger in need. If you see someone who is asking for help. Ask them what they need and see if you can be of service.",
      "color": [
        Colors.red.shade200,
        Colors.red.shade600,
      ],
    },
    {
      "title": "Faith Practice",
      "description":
          "When going out to practice a sport that you enjoy try writing down the name of someone you know and to pray for them during your practice",
      "color": [
        Colors.blue.shade200,
        Colors.blue.shade600,
      ]
    },
    {
      "title": "Faith Practice",
      "description": "Description 3",
      "color": [
        Colors.green.shade200,
        Colors.green.shade600,
      ]
    },
    {
      "title": "Faith Pracice",
      "description": "Description 4",
      "color": [
        Colors.purple.shade200,
        Colors.purple.shade600,
      ]
    }
  ];

  //Make sure the (#) is the same as the total amount of Faith Practices
  var i = Random().nextInt(2); 
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Material(
        child: InkWell(
          onTap: () {
            setState(() {
              if (quotes.length - 1 > i) {
                i = i + 1;
              } else {
                i = 0;
              }
            });
          },
          child: Container(
            constraints: BoxConstraints.expand(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
            ),
            padding: EdgeInsets.symmetric(horizontal: 32.0),
            decoration: BoxDecoration(
              gradient: RadialGradient(colors: quotes[i]["color"]),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(quotes[i]["title"],
                    style: Theme.of(context).textTheme.headline6),
                SizedBox(height: 15.0),
                Text(
                  quotes[i]["description"],
                  textAlign: TextAlign.justify,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ScrollView extends StatelessWidget {
  final dataKey = new GlobalKey();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      primary: true,
      appBar: new AppBar(
        title: const Text('Home'),
      ),
      body: new SingleChildScrollView(
        child: new Column(
          children: <Widget>[
            new SizedBox(
                height: 160.0, width: double.infinity, child: new Card()),
            new SizedBox(
                height: 160.0, width: double.infinity, child: new Card()),
            new SizedBox(
                height: 160.0, width: double.infinity, child: new Card()),
            // destination
            new Card(
              key: dataKey,
              child: new Text("data\n\n\n\n\n\ndata"),
            )
          ],
        ),
      ),
      bottomNavigationBar: new RaisedButton(
        onPressed: () => Scrollable.ensureVisible(dataKey.currentContext),
        child: new Text("Scroll to data"),
      ),
    );
  }
}
