import 'package:bank_app/base/resources/styles.dart';

import 'package:bank_app/pages/contact_page.dart';
import 'package:bank_app/pages/homepage.dart';
import 'package:bank_app/pages/profile_page.dart';
import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});
 


  @override
  State<FirstPage> createState() => _FirstPageState();
}


class _FirstPageState extends State<FirstPage> {
  void _navigateBottomBar(int index){
setState(() {
  _selectedIndex=index;
});
}
 int _selectedIndex=0;
  
  final List _pages=[
  //ho
  const HomePage(),
  
  const ContactPage(),
  const ProfilePage(),
  
];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        
        actions: const [Padding(
          padding: EdgeInsets.only(right: 15),
          child: Icon(Icons.logout_sharp,color: Colors.grey,),
        )],
       
        // title:Container(
        //   height: 50,
        //   width: 50,
        //   decoration: BoxDecoration(
        //     borderRadius: BorderRadius.circular(20),
        //   image: const DecorationImage(image: AssetImage('assets/images/logo.jpg') )
        //   ),
        //   ),
        backgroundColor: AppStyles.primary,
      ),
      body:_pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.transparent,
        currentIndex: _selectedIndex,
        onTap:_navigateBottomBar ,
        elevation: 0 ,
  
      items:const [
      BottomNavigationBarItem(icon: Icon(Icons.home),
      label: 'Home'), 
      //BottomNavigationBarItem(icon: Icon(Icons.people),
      //label: 'Beneficiaries'),
      BottomNavigationBarItem(icon: Icon(Icons.headset_mic_rounded),
      label: 'Contact Us'),
      BottomNavigationBarItem(icon: Icon(Icons.settings),
      label: 'Profile')
      
    
        ],
        unselectedItemColor: Colors.black,
        selectedItemColor: Colors.blue,
        ),


    );
  }
}