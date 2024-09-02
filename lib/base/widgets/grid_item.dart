// ignore_for_file: prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

class GetGridItem extends StatelessWidget {
  final String itemHeading;
  final IconData itemIcon;
  final String route;

  const GetGridItem(
      {super.key, required this.itemHeading, required this.itemIcon,required this.route});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 60,
        height: 60,
        decoration: const BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.all(Radius.circular(25))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              
              height: 40,
              width: 40,
              decoration: const BoxDecoration(
                color:Color.fromARGB(255, 183, 218, 247) ,
                  borderRadius: BorderRadius.all(Radius.circular(5))),
              child: Icon(itemIcon, size: 30),
              
            ),
            Text(
              itemHeading,
              style: const TextStyle(fontSize: 10),
            )
          ],
        ));
  }
}
