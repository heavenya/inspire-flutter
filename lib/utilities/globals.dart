library my_prj.globals;

import 'dart:math';

import 'package:flutter/material.dart';

var i = Random().nextInt(2);

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
