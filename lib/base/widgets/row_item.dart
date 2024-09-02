// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class GetRowItem extends StatelessWidget {
  final String itemHeading;
  final IconData itemIcon;
  const GetRowItem(
      {super.key, required this.itemHeading, required this.itemIcon});


  @override
  Widget build(BuildContext context) {
    return Container(
        width: 80,
        height: 65,
        padding: EdgeInsets.all(3),
        decoration: const BoxDecoration(
            boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          offset:Offset(2, 2),
                          blurRadius: 4 
                        )],
            color: Color.fromARGB(255, 183, 218, 247),
            borderRadius: BorderRadius.all(Radius.circular(5))),
        child:   Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,

          children: [
            Icon(itemIcon, size: 30),
            Center(
              child: Text(
                itemHeading,
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 10),
              ),
            )
          ],
        ));
  }
}
