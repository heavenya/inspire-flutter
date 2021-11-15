// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:inspire/pages/base_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Avenir',
        textTheme: TextTheme(
          headline6: TextStyle(color: Colors.white, fontSize: 35.0),
          bodyText2: TextStyle(color: Colors.white, fontSize: 20.0),
        ),
      ),
      title: 'Welcome to Flutter',
      home: BaseScreen(),
    );
  }
}
