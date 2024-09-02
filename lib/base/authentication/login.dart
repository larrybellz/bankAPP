import 'package:bank_app/base/resources/styles.dart';
import 'package:bank_app/base/widgets/button.dart';
import 'package:bank_app/pages/first_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  final void Function()? onTap;
  const Login({super.key, required this.onTap});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _usernameController=TextEditingController();
  final _passwordController=TextEditingController();
  bool _formValid = false;
  //final GlobalKey<FormState> _formKey=Gl obalKey<FormState>();
  final _formKey = GlobalKey<FormState>();
  void login(){
    Navigator.pushNamed(context,'/firstpage');
    _usernameController.text='';
    _passwordController.text='';

  }
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
                SizedBox(
                  height: 60,
                ),
                const Text(
                  'Hello, welcome back!',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 16,
                ),
                const Text(
                  'Login to continue',
                  style: TextStyle(color: Colors.white),
                ),
                const SizedBox(
                  height: 60,
                ),
                loginForm(),
                Row(
                  children: [
                    const Text('Dont have account?'),
                    TextButton(
                        onPressed: widget.onTap, child: const Text('Sign Up'))
                  ],
                )
              ],
            ),
          ),
        ));
  }

  Widget loginForm() {
    final size = MediaQuery.of(context).size;
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            validator: (value) {
              if (value!.isEmpty) {
                return 'please fill in the username';
              }
              return null;
            },
            controller: _usernameController,
            decoration: AppStyles.textFieldDecoration.copyWith(
              hintText: 'username',
              labelText: 'username'

            ),
          ),
          const SizedBox(
            height: 30,
          ),
          TextFormField(
            validator: (value) {
              if (value!.isEmpty) {
                return 'please fill in the password';
              }
              return null;
            },
            controller: _passwordController,
            obscureText: true,
            decoration:
                AppStyles.textFieldDecoration.copyWith(hintText: 'password',labelText: 'password'),
          ),
          Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                  onPressed: () {}, child: const Text('Forgot password'))),
          const SizedBox(height: 20),
          const SizedBox(
            height: 30,
          ),
          SizedBox(
            width: size.width * 0.7,
            child:ElevatedButton(onPressed:(){
              _formValid=_formKey.currentState!.validate();
              _formValid? login():null;
            }
, 
            child: const Text('Login'))
          ),
        ],
      ),
    );
  }
}
