import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tourguide/login_screen.dart';

void main() async {
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.leanBack);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: loginScreen(),
    );
  }
}
