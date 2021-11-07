import 'package:flutter/material.dart';
import 'package:inspire/utilities/globals.dart' as globals;

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Material(
        child: InkWell(
          onTap: () {
            setState(() {
              if (globals.quotes.length - 1 > globals.i) {
                globals.i = globals.i + 1;
                onTapVal = true;
              } else {
                globals.i = 0;
                onTapVal = true;
              }
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
                  Expanded(
                    child: CircleAvatar(
                      radius: 40,
                      backgroundColor: Colors.white,
                      child: IconButton(
                          icon: Icon(
                            Icons.arrow_upward_outlined,
                            size: 35,
                          ),
                          onPressed: () {
                            gotoPreviousPage();
                            setState(() {
                              onTapVal = false;
                            });
                          }),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                            onTapVal
                                ? globals.quotes[globals.i]["title"]
                                : globals.quotes[index]["title"],
                            style: Theme.of(context).textTheme.headline6),
                        SizedBox(height: 15.0),
                        Text(
                          onTapVal
                              ? globals.quotes[globals.i]["description"]
                              : globals.quotes[index]["description"],
                          textAlign: TextAlign.justify,
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: CircleAvatar(
                      radius: 40,
                      backgroundColor: Colors.white,
                      child: IconButton(
                        icon: Icon(
                          Icons.arrow_downward_outlined,
                          size: 35,
                        ),
                        onPressed: () {
                          setState(() {
                            onTapVal = false;
                          });
                          gotoNextPage();
                        },
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  gotoNextPage() {
    _pageController!
        .nextPage(duration: Duration(milliseconds: 1000), curve: Curves.easeIn);
  }

  gotoPreviousPage() {
    _pageController!.previousPage(
        duration: Duration(milliseconds: 1000), curve: Curves.easeIn);
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
      bottomNavigationBar: new ElevatedButton(
        onPressed: () => Scrollable.ensureVisible(dataKey.currentContext!),
        child: new Text("Scroll to data"),
      ),
    );
  }
}
