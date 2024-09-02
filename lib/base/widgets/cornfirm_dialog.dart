import 'package:bank_app/base/resources/styles.dart';
import 'package:bank_app/base/widgets/button.dart';
import 'package:flutter/material.dart';
  void confirmTrans(context) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            backgroundColor: AppStyles.primary.withOpacity(0.8),
            content: Container(
              height: 160,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Are you sure  you  want to make the transaction'),
                  Row(
                    children: [
                      Button(
                        text: 'confirm',
                        onPressed: () {},
                        color: AppStyles.primary,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Button(
                          text: 'cancel',
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          color: Colors.red)
                    ],
                  )
                ],
              ),
            ),
          );
        });
  }

