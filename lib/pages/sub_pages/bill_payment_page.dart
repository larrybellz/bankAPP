import 'package:bank_app/base/resources/styles.dart';
import 'package:bank_app/base/utils/app_json.dart';

import 'package:flutter/material.dart';

class BillPaymentPage extends StatefulWidget {
  const BillPaymentPage({super.key});

  @override
  State<BillPaymentPage> createState() => _BillPaymentPage();
}

class _BillPaymentPage extends State<BillPaymentPage> {
  //String selected=networkLines[0]['name'];
  List bills=['electicity','water'];
  int pageIndex = 0;
  final _controller=TextEditingController();

  
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
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
          'bill payments',
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
                height: size.height * 0.5,
                decoration: AppStyles.containerdecoration,
                child: Column(
                  children: [
                    billsTile('elctricity')


                  ],
                  


                )
              ),
            ),
          ),
          const SizedBox(height: 50,),
         

  
  
      
        ],
        
      ),

    );
  }
  Widget billsTile(label){
    var size =MediaQuery.of(context).size;
    return Container(
      width: size.width*0.8,
      decoration: AppStyles.containerdecoration.copyWith(color: Colors.blue),
    );


  }}