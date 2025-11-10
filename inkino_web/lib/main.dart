import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'widgets/navbar.dart';

void main() {
  runApp(InKinoWeb());
}

class InKinoWeb extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'inKino Web',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
        textTheme: Typography.blackMountainView.apply(fontFamily: 'Poppins'),
      ),
      home: Scaffold(
        appBar: const NavBar(title: "inKino Web"),
        body: HomeScreen(),
      ),
    );
  }
}
