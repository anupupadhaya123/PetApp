import 'package:flutter/material.dart';

import 'Screens/DrawerScreen.dart';
import 'Screens/HomeScreen.dart';

void main() {
  runApp(const MaterialApp(
    home: Homepage(),
  ));
}

class Homepage extends StatelessWidget {
  const Homepage({ Key? key }) : super(key: key);

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
