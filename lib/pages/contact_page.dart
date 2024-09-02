import 'package:bank_app/base/resources/styles.dart';
import 'package:flutter/material.dart';
class ContactPage extends StatefulWidget {
  const ContactPage({super.key});

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.primary,
      body: Container(
        child: Center(child:Icon(Icons.wifi_calling_3_rounded,size: 50,)),

      ),
    );
  }
}