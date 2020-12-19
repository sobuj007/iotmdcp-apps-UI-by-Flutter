import 'package:flutter/material.dart';
import 'package:iotmdcp/About.dart';
import 'package:iotmdcp/Admin.dart';
import 'package:iotmdcp/Carrier.dart';
import 'package:iotmdcp/Home.dart';
import 'package:iotmdcp/Notice.dart';
import 'package:iotmdcp/OurProduct.dart';

import 'package:iotmdcp/Splashscreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'iotmdcp',
      theme: ThemeData(
        fontFamily: 'Roboto',
        primarySwatch: Colors.blue,
      ),
      home: Splashscreen(),
      initialRoute: '/',
      routes: {
        '/Home': (context) => Home(),
        '/About': (context) => About(),
        '/Admin': (context) => Admin(),
        '/Notice': (context) => Notice(),
        '/Carrier': (context) => Carrier(),
        '/OurProduct': (context) => OurProduct(),
      },
    );
  }
}
