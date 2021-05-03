import 'package:flutter/material.dart';
import 'package:evaluacion/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.green,
        ),
        title: 'Components App',
        debugShowCheckedModeBanner: false,
        home: HomePage());
  }
}
