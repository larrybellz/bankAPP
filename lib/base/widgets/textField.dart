import 'package:bank_app/base/resources/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppTextField extends StatelessWidget {
  final String hintText;
    final String labelText;
  const AppTextField({super.key,required  this.hintText,required  this.labelText});

  @override
  Widget build(BuildContext context) {
    return  TextField(
      decoration: InputDecoration(
        labelText: labelText,
        hintText: hintText,
        hintStyle: TextStyle(color: AppStyles.grey),
        filled: true,
        fillColor: AppStyles.white,
        enabledBorder: OutlineInputBorder(
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          borderSide: BorderSide(color: AppStyles.grey)
          
          
        )
      ),

    );
  }
}