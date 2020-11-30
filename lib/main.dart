import 'package:app_state_management/src/pages/one_page.dart';
import 'package:app_state_management/src/pages/two_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        routes: {
          'one_page': (_) => OnePage(),
          'two_page': (_) => TwoPage(),
        },
        home: OnePage());
  }
}
