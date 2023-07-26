import 'package:flutter/material.dart';

Widget cardCircular ({
  required String nameImage,
  double size =40,


}){
  return  GestureDetector(
    onTap: (){},
    child: Card(
      elevation: 5.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30.0),
      ),
      child: CircleAvatar(
        radius: 30,
        backgroundColor: Colors.white,
        child: Image.asset('images/$nameImage.png',
          width: size,
          height: size,
        ),
      ),
    ),
  );
}