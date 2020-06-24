import 'package:flutter/material.dart';
import 'package:easygit/pages/homescreen.dart';

void main() => runApp(Home());

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        primaryColor: Colors.orange,
      ),
      home: HomeScreen(),
    );
  }
}
