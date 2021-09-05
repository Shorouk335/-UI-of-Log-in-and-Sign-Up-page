
import 'package:flutter/material.dart';
import 'package:login_app/next_log%20in.dart';
import 'package:login_app/sign_up.dart';
import 'package:login_app/widget.dart';

class MyApp2 extends StatefulWidget {
  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp2> {
  bool? value = false;
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(height /3),
        child: ClipPath(
          clipper: myClipper(),
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/planet_4x.webp'),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: height-height/2.5,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                flex: 1,
                child: Text(
                  "Log in                          ",
                  style: TextStyle(
                    color: Color(0xff9400d3),
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Expanded(
                flex: 4,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 5,left: 20,right: 20),
                      child: TextF("User name",false,Icons.person,0),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5,bottom: 10,left: 20,right: 20),
                      child: TextF("Password",true,Icons.lock,1),
                    ),
                    Row(
                      children: [
                        Checkbox(
                         activeColor: Color(0xff9400d3),
                          value: this.value,
                          onChanged: (bool? i) {
                            setState(() {
                             this.value = i;
                            });
                          },
                        ),
                        Text("Remember me"),
                        SizedBox(width: MediaQuery.of(context).size.width/3,),
                        Text("ForgetPassword?"),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>NextLogin()));
                        },child: TextB("Log in"),
                    ),),
                  ],
                ),
              ),
              // Expanded(
              //     flex: 2,
              //     child: Column(
              //       mainAxisAlignment: MainAxisAlignment.center,
              //       children: [
              //         Text(
              //           " Sign With",
              //           style: TextStyle(
              //             fontSize: 18,
              //             fontWeight: FontWeight.bold,
              //             color: Color(0xff9400d3),
              //           ),
              //         ),
              //         Row(
              //           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //           children: [
              //             CircleAvatar(
              //               backgroundImage:
              //                   AssetImage("images/Facebook_icon_2013.svg.png"),
              //               radius: 20,
              //             ),
              //             CircleAvatar(
              //               backgroundImage: AssetImage("images/download.png"),
              //               radius: 20,
              //             ),
              //           ],
              //         )
              //       ],
              //     )),
              Expanded(
                  flex: 1,
                  child: Row(
                    children: [
                      SizedBox(width: MediaQuery.of(context).size.width/4.5,),
                      Text("I Don't Hava Any Account?"),
                      TextButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUp()));
                          },
                          child: Text(
                            "Sign up",
                            style: TextStyle(
                              color: Color(0xff9400d3),
                              fontSize: 20,
                            ),
                          ))
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}

class myClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height);
    path.quadraticBezierTo(
        size.width / 4, size.height - 40, size.width / 2, size.height - 20);
    path.quadraticBezierTo(
        3 / 4 * size.width, size.height, size.width, size.height - 40);
    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
