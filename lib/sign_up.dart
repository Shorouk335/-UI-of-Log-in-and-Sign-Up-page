import 'package:flutter/material.dart';
import 'package:login_app/widget.dart';
class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text("\nSign Up ",style: TextStyle(
            color: Color(0xff9400d3),
            fontSize: 50,
          ),),
          SizedBox(height: MediaQuery.of(context).size.height/15,),
          Padding(
            padding: const EdgeInsets.only(top: 5,bottom: 10,left: 20,right: 20),
            child: TextF("Your Name",false,Icons.person,0),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5,bottom: 10,left: 20,right: 20),
            child: TextF("Your Mail",false,Icons.mail,0),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5,bottom: 10,left: 20,right: 20),
            child: TextF("Your Password",false,Icons.lock,0),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5,bottom: 10,left: 20,right: 20),
            child: TextF("Your phone",false,Icons.phone,0),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5,bottom: 10,left: 20,right: 20),
            child: TextF("Your BirthDay",false,Icons.calendar_today,0),
          ),
          SizedBox(height: MediaQuery.of(context).size.height/15,),
          TextB("Enter"),

        ]

      ),


    );
  }
}
