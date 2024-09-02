import 'package:flutter/material.dart';

class AppStyles {
  static Color primary = Color.fromARGB(255, 183, 218, 247);
  static Color secondary= const Color(0x03055B);
 static Color blue = Colors.blue;
  static Color white = Colors.white;
  static Color grey = Colors.grey;
  static Color black = Colors.black;

  static var containerdecoration = const BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.all(Radius.circular(15)),
    boxShadow: [
      BoxShadow(color: Colors.grey, offset: Offset(2, 2), blurRadius: 4)
    ],
  );


static var textFieldDecoration=InputDecoration(
        //hintText: hintText, 
        hintStyle: TextStyle(color: AppStyles.grey),
        filled: true,
        fillColor: AppStyles.white.withOpacity(0.5),
        border: OutlineInputBorder(
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          borderSide: BorderSide(color: AppStyles.grey)
          
          
        )
      );
      
    }