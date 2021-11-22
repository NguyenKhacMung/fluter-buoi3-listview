import 'package:buoi3/route/path.dart';
import 'package:flutter/material.dart';

import 'route/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // initialRoute: '/',
      // routes: {
      //   // When navigating to the "/" route, build the FirstScreen widget.
      //   '/': (context) => const PageControl(),
      //   // When navigating to the "/second" route, build the SecondScreen widget.
      //   '/second': (context) => const login(),
      // },
      // home: BottomTab(),
      initialRoute: splashPath,
      routes: routes,
    );
  }
}
