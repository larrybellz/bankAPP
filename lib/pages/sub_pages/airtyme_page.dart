import 'dart:ffi';

import 'package:bank_app/base/resources/styles.dart';
import 'package:bank_app/base/utils/app_json.dart';
import 'package:bank_app/base/widgets/app_bar.dart';
import 'package:bank_app/base/widgets/button.dart';
import 'package:bank_app/base/widgets/submitbtn.dart';

import 'package:bank_app/base/widgets/textField.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Airtyme extends StatefulWidget {
  const Airtyme({super.key});

  @override
  State<Airtyme> createState() => _AirtymeState();
}

class _AirtymeState extends State<Airtyme> {
  String selected = networkLines[0]['name'];
  //List lines=['econet','telecel','netone'];
  int pageIndex = 0;
  final _controllerNumber = TextEditingController();
  var _controllerAmount = TextEditingController();
  bool _formValid = false;
  final _formKey = GlobalKey<FormState>();
  double _balance=cardLists[0]['amount'];
  void buyAirtime(){
    setState(() {
      _balance=_balance-double.parse(_controllerAmount.text);
      print('your balance is $_balance');
      Navigator.pop(context);
      _controllerAmount.text='';
      _controllerNumber.text='';
    });
  


  }

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
          'Airtime & bundles',
          style: TextStyle(color: AppStyles.white, fontWeight: FontWeight.w800),
        )),
        backgroundColor: AppStyles.primary,
      ),
      body: ListView(
        children: [
          getTabs(),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                width: size.width * 0.9,
                height: size.height * 0.5,
                decoration: AppStyles.containerdecoration,
                child: pageIndex == 0 ? airtime() : bundles(),
              ),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
        ],
      ),
    );
  }

  Widget getTabs() {
    var size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: 55,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: AppStyles.primary.withOpacity(0.1)),
      child: Row(
        children: [
          pageIndex == 0
              ? Flexible(
                  child: GestureDetector(
                  onTap: () {
                    setState(() {
                      pageIndex = 1;
                    });
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(6),
                    child: Container(
                      width: (size.width - 30) / 2,
                      height: 50,
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(12)),
                      child: Center(
                        child: Text(
                          'airtime',
                          style: TextStyle(
                              fontSize: 15,
                              color: AppStyles.white,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                  ),
                ))
              : GestureDetector(
                  onTap: () {
                    setState(() {
                      pageIndex = 0;
                    });
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(6),
                    child: Container(
                      width: (size.width - 30) / 2,
                      height: 50,
                      decoration: BoxDecoration(
                          //color:Colors.blue,
                          borderRadius: BorderRadius.circular(12)),
                      child: Center(
                        child: Text(
                          'Airtime',
                          style: TextStyle(
                              fontSize: 15,
                              color: AppStyles.white,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                  ),
                ),
          pageIndex == 1
              ? Flexible(
                  child: GestureDetector(
                  onTap: () {
                    setState(() {
                      pageIndex = 0;
                    });
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(6),
                    child: Container(
                      width: (size.width - 30) / 2,
                      height: 50,
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(12)),
                      child: Center(
                        child: Text(
                          'bundles',
                          style: TextStyle(
                              fontSize: 15,
                              color: AppStyles.white,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                  ),
                ))
              : GestureDetector(
                  onTap: () {
                    setState(() {
                      pageIndex = 1;
                    });
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(6),
                    child: Container(
                      width: (size.width - 30) / 2,
                      height: 50,
                      decoration: BoxDecoration(
                          //color:Colors.blue,
                          borderRadius: BorderRadius.circular(12)),
                      child: Center(
                        child: Text(
                          'Bundles',
                          style: TextStyle(
                              fontSize: 15,
                              color: AppStyles.white,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                  ),
                ),
        ],
      ),
    );
  }

  Widget airtime() {
    return Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
      selectLine(),
      Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                keyboardType:
                    const TextInputType.numberWithOptions(decimal: true),
                maxLength: 10,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'please fill in the recievers mobile number';
                  }
                  return null;
                },
                controller: _controllerNumber,
                decoration: AppStyles.textFieldDecoration.copyWith(
                  hintText: 'enter recievers number',
                  labelText: 'receivers number'
                ),
              ),
              TextFormField(
                keyboardType:
                    const TextInputType.numberWithOptions(decimal: true),
                controller: _controllerAmount,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'please fill in the amount ';
                  }
                  return null;
                },
                decoration: AppStyles.textFieldDecoration.copyWith(
                  hintText: 'enter amount',
                  labelText: 'amount'
                ),
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.7,
                child: ElevatedButton(
                    onPressed: () {
                      _formValid = _formKey.currentState!.validate();
                      _formValid ? Airtime() : null;
                    },
                    child: Text('Buy')),
              )
            ],
          )),
    ]);
  }

  Widget selectLine() {
    return DropdownButton(
        value: selected,
        onChanged: (newValue) {
          setState(() {
            selected = newValue.toString();
          });
        },
        items: networkLines.map((option) {
          return DropdownMenuItem(
            value: option['name'],
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                        image:
                            DecorationImage(image: AssetImage(option['logo']))),
                  ),
                  Text(option['name'])
                ]),
          );
        }).toList());
  }

  bundles() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        selectLine(),
        const SizedBox(height: 20,),
        const Center(
          child: Text('bundles are currently unavailable',
          style: TextStyle(color: Colors.grey),),
        )
      ],
    );
  }

  void Airtime() {
    showDialog(
        context: context,
        builder: (context) {
          var recieversNumber = _controllerNumber.text;
          var amount = _controllerAmount.text;
          return AlertDialog(
            backgroundColor: AppStyles.primary.withOpacity(0.8),
            content: Container(
              height: 160,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                      'Are you sure  you  want to send USD $amount worth of airtime to $recieversNumber'),
                  Row(
                    children: [
                      Button(
                        text: 'confirm',
                        onPressed: buyAirtime,
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
}
