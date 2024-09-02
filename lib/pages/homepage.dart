
import 'package:bank_app/base/resources/styles.dart';

import 'package:bank_app/base/utils/app_json.dart';
import 'package:bank_app/base/utils/card_operations_json.dart';

import 'package:bank_app/base/widgets/grid_item.dart';
import 'package:bank_app/base/widgets/row_item.dart';
import 'package:bank_app/pages/sub_pages/accounts_statement.dart';
import 'package:bank_app/pages/sub_pages/airtyme_page.dart';
import 'package:bank_app/pages/sub_pages/bill_payment_page.dart';
import 'package:bank_app/pages/sub_pages/internal_transfers.dart';
import 'package:bank_app/pages/sub_pages/zipit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:hive_generator/hive_generator.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final PageController _controller=PageController();
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
            
            
              const SizedBox(
                height: 5,
              ),
          
              Container(
                
                height: 200,
                width: double.infinity,
                child: PageView(
                  controller: _controller,
                  children: List.generate(cardLists.length, (index){
                    return getCard(
                      cardLists[index]['currency'],
                      cardLists[index]['amount'].toString(),
                      cardLists[index]['cardNumber'],);
                
                  }),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GetRowItem(itemHeading: 'loans', itemIcon:Icons.attach_money_outlined),
                   GetRowItem(itemHeading: 'Virtual branch', itemIcon:Icons.offline_share_outlined),
                    GetRowItem(itemHeading: 'pay Fees', itemIcon:Icons.school_outlined)
                   
                  
                  
                  
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                  height: size.height * 0.35,
                  width: size.width * 0.9,
                  decoration: const BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        offset:Offset(2, 2),
                        blurRadius: 4 
                      )
                    ],
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(12))),
                  child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisExtent: 100,
                    ),
                    itemCount: card_operation.length,
                    itemBuilder: (context, index)  {
                     return  InkWell(
                      onTap: (){
                        Navigator.pushNamed(context, card_operation[index]['route']);
                      },
                       child: GetGridItem(
                        itemHeading: card_operation[index]['itemHeading'],
                       itemIcon :card_operation[index]['itemIcon'],
                       route: card_operation[index]['route'],),
                     );
                    },
                    //children: 
                    //  InkWell(
                    //      onTap: (){
                    //       Navigator.push(
                    //         context,
                    //       MaterialPageRoute(builder: (context)=>InternalTransfers()));},
                    //     child: const GetGridItem('
                    //       itemHeading: 'Internal Tranfers',

                  ))
            ],
          ),
        ),
      ),
    );
  }

  Widget getCard(currency,amount, cardNumber) {
    var size =MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.all(10),
      child: Container(
        padding: EdgeInsets.all(10),
        width: size.width*0.70,
        height: 175,
        decoration: BoxDecoration(
          gradient: RadialGradient(
              colors: [AppStyles.primary, AppStyles.secondary, Colors.blue],
              radius: 4),
          boxShadow: const [ 
            BoxShadow(color: Colors.grey, offset: Offset(2, 2), blurRadius: 4)
          ],
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'zim-CASH',
                  style: TextStyle(
                      fontSize: 16,
                      
                      fontWeight: FontWeight.bold,
                      color: AppStyles.white),
                ),
                const Text('NOSTRO')
              ],
            ),
            const SizedBox(
              height: 15,
            ),
             Row(
              children: [
                Column(
                  children: [
                    Text(''),
                    Text(cardNumber),
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                          image: AssetImage('assets/images/sil.jpg'))),
                ),
                 Text(currency + amount)
              ],
            )
          ],
        ),
      ),
    );
  }
}
