import 'package:animals_sale/drawer_screen.dart';
import 'package:animals_sale/home_screen.dart';
import 'package:flutter/material.dart';



void main(){
  return runApp(
    MaterialApp(

        debugShowCheckedModeBanner: false,
        home:HomePage())
  );
}


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          DrawerScreen(),
          HomeScreen()
        ],

      ),
    );
  }
}
