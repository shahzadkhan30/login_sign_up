import 'package:flutter/material.dart';
import 'loginpage.dart';
import 'homepage.dart';
import 'signup.dart';
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
 final routes = <String, WidgetBuilder>{
   LoginPage.tag: (context) => LoginPage(),
   HomePage.tag: (context) => HomePage(),
 };
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginPage(),
      routes: routes,
    );
  }
}