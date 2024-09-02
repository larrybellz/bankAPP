import 'package:bank_app/base/authentication/login.dart';
import 'package:bank_app/base/authentication/login_or_register.dart';
import 'package:bank_app/pages/first_page.dart';
import 'package:bank_app/pages/homepage.dart';
import 'package:bank_app/pages/sub_pages/accounts_statement.dart';
import 'package:bank_app/pages/sub_pages/airtyme_page.dart';
import 'package:bank_app/pages/sub_pages/bill_payment_page.dart';
import 'package:bank_app/pages/sub_pages/internal_transfers.dart';
import 'package:bank_app/pages/sub_pages/rtgs_page.dart';
import 'package:bank_app/pages/sub_pages/zipit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    systemNavigationBarColor:  Colors.grey,
  ));
  runApp(const MyApp());
}class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        fontFamily: 'Poppins',
      ),
      
 
        home:const LoginOrRegister(),
        
        routes: {
          '/homepage':(context)=>const HomePage(),
          '/firstpage':(context)=>const FirstPage(),
          '/zipit':(context)=>const Zipit(),
          '/account-statement':(context)=>const AccountsStatement(),
          '/airtime-&-bundles':(context)=>const Airtyme(),
          '/internal-transfers':(context)=>const InternalTransfers(),
          '/bill-payments':(context)=>const BillPaymentPage(),

        },
      
      
    );
  }
}