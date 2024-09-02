import 'package:bank_app/base/resources/styles.dart';
import 'package:bank_app/base/widgets/button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EditDialogBox extends StatelessWidget {
  
  final  controller;
  final VoidCallback onCancel;
  final VoidCallback onSave;
  final bool nameAlertdialog;

  EditDialogBox({super.key,required this.controller,required this.onCancel,required this.onSave ,required this.nameAlertdialog});

  

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: AppStyles.primary.withOpacity(0.8),
      content: Container(
        height: 120,
        child:  Column(
          children: [
            nameAlertdialog?
             TextField(
            controller: controller,
            
            decoration: AppStyles.textFieldDecoration.copyWith(labelText: 'name'),
              
            ):
            TextField(
            controller: controller,
            keyboardType: TextInputType.number,
            decoration: AppStyles.textFieldDecoration.copyWith(labelText: 'phone number'),
              
            )
            
            ,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
              Button(text:'save', onPressed: onSave, color: Colors.blue),
              
              Button(text: 'cancel', onPressed:onCancel,
               color: Colors.red)
                
              ],)
          ],
        ),
        
      ),
    );
    }
}