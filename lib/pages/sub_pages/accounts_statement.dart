import 'package:bank_app/base/resources/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AccountsStatement extends StatelessWidget {
  const AccountsStatement({super.key});

  @override
  Widget build(BuildContext context) {
    final size=MediaQuery.of(context).size;
      return Scaffold(
      backgroundColor: AppStyles.primary,
      appBar: AppBar(
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Icon(
              Icons.logout_sharp,
              color: Colors.grey,
            ),
          )
        ],
        title: Center(
            child: Text(
          'Account statement',
          style: TextStyle(color: AppStyles.white, fontWeight: FontWeight.w800),
        )),
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
                height: size.height * 0.8,
                decoration: AppStyles.containerdecoration,
                child: const Column(
                  

                )
              ),
            ),
          ),
          const SizedBox(height: 50,),
         
 
  
  
      
        ],
        
      ),

    );
  }}