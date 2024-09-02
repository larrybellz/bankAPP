 import 'package:bank_app/base/resources/styles.dart';
import 'package:flutter/material.dart';
 class customAppBar extends StatelessWidget {
  final String title;
  const customAppBar({super.key,required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(      
        actions: const [Padding(
          padding: EdgeInsets.only(right: 10),
          child: Icon(Icons.logout_sharp,color: Colors.grey,),
        )],
       
        title: Center(child: Text(title,style: TextStyle(color: AppStyles.white,fontWeight: FontWeight.w800 ),)),
        backgroundColor: AppStyles.primary,
      )

    );
  }
}
