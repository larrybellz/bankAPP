import 'package:bank_app/base/resources/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Submitbtn extends StatelessWidget {
  const Submitbtn({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return  InkWell(
            

            child: Container(
              
              width: size.width*0.95,
              height: 50,
              decoration: BoxDecoration(
                color: AppStyles.primary,
                border: Border.all(color: Colors.white),
                borderRadius: const BorderRadius.all(Radius.circular(15))
              ),
              child: Center(child: Text('submit', style: TextStyle(color: AppStyles.white),)),
            ),
          );
  }
}