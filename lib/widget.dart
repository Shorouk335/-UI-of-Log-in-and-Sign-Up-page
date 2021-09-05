import 'package:flutter/material.dart';
Widget TextF (String t,bool k,IconData b,var n){
  var p ;
  if (n==1)
     p= iconB();
  return TextField(
    obscureText: k,
    decoration: InputDecoration(
       suffixIcon: p,
      enabledBorder: InputBorder(),
      focusedBorder: InputBorder(),
      prefixIcon: Icon(b),
      labelText: '$t',
      hintText: '$t',
    ),

  );
}
Widget TextB (String t ){

  return Container(
        padding: EdgeInsets.only(top: 10,bottom: 10,left: 50,right: 50),
        decoration: BoxDecoration(
          color: Color(0xff9400d3),
          borderRadius: BorderRadiusDirectional.circular(25),
        ),
        child:Text("$t",style: TextStyle(
          color: Colors.white,
          fontSize: 25,
        ),),
  );

}
OutlineInputBorder InputBorder (){
  return OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(30)),
    borderSide: BorderSide(
      color:Color(0xff9400d3),
      width: 2,
    ),
  );

}
Widget iconB (){
  return IconButton(
    icon : Icon(Icons.remove_red_eye,size: 25,) ,
    onPressed: (){
    },

  );
}
