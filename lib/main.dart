import 'package:flutter/material.dart';
import 'package:kbc_2/winign.dart';

import 'hom.dart';
import 'losting.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => Homepage(),
        '1':(context) => WiningnPage(),
        '2' : (context) => LostingPage(),
      },
    ),
  );
}
