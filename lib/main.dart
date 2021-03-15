import 'package:flutter/material.dart';
import 'package:pe_ui_app/HomeScreen.dart';
import 'package:pe_ui_app/DrawerScreen.dart';
void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Homepage(),
    theme: ThemeData(
        fontFamily: 'Circular'
    ),
  ));
}

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          DrawerScreen(),
          HomeScreen(),

        ],
      ),

    );
  }
}

