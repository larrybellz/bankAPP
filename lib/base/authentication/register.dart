import 'package:bank_app/base/resources/styles.dart';
import 'package:bank_app/base/widgets/button.dart';
import 'package:bank_app/pages/first_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Register extends StatelessWidget {
  final void Function()? onTap;
  const Register({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: AppStyles.primary,
        body: Padding(
          padding: const EdgeInsets.all(24.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 60,
                ),
                const Text(
                  'Create Account',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 80,
                ),
                TextField(
                  decoration: AppStyles.textFieldDecoration.copyWith(
                    hintText: 'username',
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                TextField(
                  obscureText: true,
                  decoration: AppStyles.textFieldDecoration
                      .copyWith(hintText: 'password'),
                ),
                const SizedBox(
                  height: 30,
                ),
                TextField(
                  obscureText: true,
                  decoration: AppStyles.textFieldDecoration
                      .copyWith(hintText: 'confirm password'),
                ),
                const SizedBox(height: 20),
                SizedBox(
                  width: size.width * 0.7,
                  child: Button(
                      text: 'Register',
                      onPressed: () {},
                      color: Colors.blueAccent.withOpacity(0.5)),
                ),
                Row(
                  children: [
                    const Text('Dont have account?'),
                    TextButton(onPressed: onTap, child: const Text('Sign Up'))
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
