import 'package:bank_app/base/authentication/login.dart';
import 'package:bank_app/base/authentication/register.dart';
import 'package:flutter/cupertino.dart';

class LoginOrRegister extends StatefulWidget {
  const LoginOrRegister({super.key});

  @override
  State<LoginOrRegister> createState() => _LoginOrRegisterState();
}

class _LoginOrRegisterState extends State<LoginOrRegister> {
  bool showLoginPage=true;
  void togglePages(){
    setState(() {
      showLoginPage=!showLoginPage;
    });
  }
  @override
  Widget build(BuildContext context) {
    if (showLoginPage){
     return Login(onTap: togglePages)   ;
    }
    else {
      return Register(onTap: togglePages);
    }

  }
}