import 'package:flutter/material.dart';
import 'package:gpay_clone/homepage.dart';
import 'package:gpay_clone/user_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: HomePage(),
      routes: {
        UserScreen.routeName: (ctx) => UserScreen(),
      },
    );
  }
}
