import 'package:assignment3/contact_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: ContactScreen.routeName,
      routes: {
        ContactScreen.routeName: (context) => ContactScreen(),
      },
    ),
  );
}
