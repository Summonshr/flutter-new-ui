import 'package:flutter/material.dart';
import './pages/page-one.dart';
import './pages/single.dart';
import './settings/themes.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        routes: {'/': (context) => PageOne(), '/single': (context) => Single()},
        initialRoute: '/',
        theme: themeData);
  }
}
