import 'package:bank_app/base/resources/styles.dart';
import 'package:bank_app/base/widgets/app_bar.dart';
import 'package:bank_app/base/widgets/submitbtn.dart';
import 'package:bank_app/base/widgets/textField.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
class RtgsPage extends StatelessWidget {
  const RtgsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppStyles.primary,
       appBar: AppBar(      
        actions: const [Padding(
          padding: EdgeInsets.only(right: 10),
          child: Icon(Icons.logout_sharp,color: Colors.grey,),
        )],
       
        title: Center(child: Text('RTGS',style: TextStyle(color: AppStyles.white,fontWeight: FontWeight.w800 ),)),
        backgroundColor: AppStyles.primary,
      ),

      body: ListView(
        
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                width: size.width * 0.9,
                height: size.width*0.6,
                decoration: AppStyles.containerdecoration,               
                 child: const Column(
                  
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    AppTextField(hintText: 'account number',labelText:'account number' ,),
                    AppTextField(hintText: 'Destination Account Number',labelText: 'Destination Account Number'),
                    AppTextField(hintText: 'Receivers name',labelText: 'Receivers name'),
                    AppTextField(hintText: 'Destination Mobile Number',labelText: 'Destination Mobile Number'),
                    AppTextField(hintText: 'Amount',labelText: 'Amount'),
                    
                    
                
                  ]
                 
                ),
              ),
            ),
          ),
          const SizedBox(height: 30,),
      
         const Submitbtn()
        ,
        ],
      ),
    );
  }
}
