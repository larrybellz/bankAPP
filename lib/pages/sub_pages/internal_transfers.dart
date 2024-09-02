import 'package:bank_app/base/resources/styles.dart';
import 'package:bank_app/base/utils/app_json.dart';

import 'package:bank_app/base/widgets/button.dart';
import 'package:bank_app/base/widgets/cornfirm_dialog.dart';

import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

class InternalTransfers extends StatefulWidget {
  const InternalTransfers({super.key});

  @override
  State<InternalTransfers> createState() => _InternalTransfersState();
}

class _InternalTransfersState extends State<InternalTransfers> {
  bool _formValid = false;
  final _formKey = GlobalKey<FormState>();
  String? _selected;

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
          'Internal Transfers',
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
                height: size.height * 0.7,
                decoration: AppStyles.containerdecoration,
                constraints: BoxConstraints(minHeight: 0),
                child: Form(
                  key: _formKey,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        DropdownButtonFormField(
                          decoration: AppStyles.textFieldDecoration.copyWith(labelText: 'choose sending account'),
                            validator: (value) {
                              if (value == null) {
                                return 'please select the sending account';
                              }
                              return null;
                            },
                            hint: Text('choose sending  account'),
                            value: _selected,
                            onChanged: (newValue) {
                              setState(() {
                                _selected = newValue.toString();
                              });
                            },
                            items: cardLists.map((option) {
                              return DropdownMenuItem(
                                  value: option['cardNumber'],
                                  child: Text(option['currency'] +option['cardNumber']));
                            }).toList()),
                        DropdownButtonFormField(
                          decoration: AppStyles.textFieldDecoration.copyWith(labelText: 'choose recieving account'),
                            validator: (value) {
                              if (value == null) {
                                return 'please select the recieving account';
                              }
                              return null;
                            },
                            hint: Text('choose recieving account'),
                            value: _selected,
                            onChanged: (newValue) {
                              setState(() {
                                _selected = newValue.toString();
                              });
                            },
                            items: cardLists.map((option) {
                              return DropdownMenuItem(
                                  value: option['cardNumber'],
                                  child: Text(option['currency'] +option['cardNumber']));
                            }).toList()),
                     
                        TextFormField(
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'please fill in the amount';
                              }
                              return null;
                            },
                            keyboardType: const TextInputType.numberWithOptions(
                                decimal: true),
                            decoration: AppStyles.textFieldDecoration
                                .copyWith(hintText: 'enter amount',labelText: 'enter amount')),
                        SizedBox(
                          width: size.width * 70,
                          child: ElevatedButton(
                              onPressed: () {
                                _formValid = _formKey.currentState!.validate();
                                _formValid ? confirmTrans(context) : null;
                              },
                              child: Text('submit')),
                        )
                      ]),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }


}