import 'package:flutter/material.dart';
class NextLogin extends StatelessWidget {
  const NextLogin({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff9400d3),
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Text("You Are Log In ",style: TextStyle(
          color: Color(0xff9400d3),
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),),
      ),
    );
  }
}
