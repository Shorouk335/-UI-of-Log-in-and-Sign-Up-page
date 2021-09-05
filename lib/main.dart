import 'package:flutter/material.dart';
import 'package:login_app/login_page.dart';
main() {
  runApp(MyAPP1());
}
class MyAPP1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp2(),
    );
  }
}
