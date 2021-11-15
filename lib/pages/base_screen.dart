import 'package:flutter/material.dart';
import 'package:inspire/utilities/globals.dart' as globals;
import 'package:url_launcher/url_launcher.dart';

class BaseScreen extends StatefulWidget {
  @override
  State<BaseScreen> createState() => _BaseScreenState();
}

class _BaseScreenState extends State<BaseScreen> {
  PageController? _pageController = PageController();

  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _pageController?.dispose();
    super.dispose();
  }

  bool onTapVal = false;
  bool backTitle = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Material(
          child: InkWell(
            onTap: () {
              setState(() {
                onTapVal = true;
                backTitle = !backTitle;
              });
            },
            child: PageView.builder(
              itemCount: globals.quotes.length,
              scrollDirection: Axis.vertical,
              controller: _pageController,
              itemBuilder: (ctx, index) => Container(
                constraints: BoxConstraints.expand(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                ),
                padding: EdgeInsets.symmetric(horizontal: 32.0),
                decoration: BoxDecoration(
                  gradient: RadialGradient(
                      colors: onTapVal
                          ? globals.quotes[index]["color"]
                          : globals.quotes[index]["color"]),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          IconButton(
                            onPressed: () {
                              launchURL();
                            },
                            icon: Icon(
                              Icons.favorite_border_outlined,
                              size: 35,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                              onTapVal
                                  ? backTitle == true
                                      ? globals.quotes[index]["back_title"]
                                      : globals.quotes[index]["front_title"]
                                  : globals.quotes[index]["front_title"],
                              style: Theme.of(context).textTheme.headline6),
                          SizedBox(height: 15.0),
                          Text(
                            onTapVal
                                ? backTitle == true
                                    ? globals.quotes[index]["back_description"]
                                    : globals.quotes[index]["front_description"]
                                : globals.quotes[index]["front_description"],
                            textAlign: TextAlign.justify,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  void launchURL() async => await canLaunch(globals.url)
      ? await launch(globals.url)
      : throw 'Could not launch ${globals.url}';
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
      bottomNavigationBar: new ElevatedButton(
        onPressed: () => Scrollable.ensureVisible(dataKey.currentContext!),
        child: new Text("Scroll to data"),
      ),
    );
  }
}
