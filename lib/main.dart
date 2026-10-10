import 'package:flutter/material.dart';
import 'package:space_app2/screens/login.dart';

void main() {
  runApp(const space_app());
}

class space_app extends StatelessWidget {
  const space_app({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        login.routeName: (context)=>login(),
      },
    initialRoute: login.routeName,
    );
  }
}

