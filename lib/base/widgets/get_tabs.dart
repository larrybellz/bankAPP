import 'package:bank_app/base/resources/styles.dart';
import 'package:flutter/material.dart';

class GetTabs extends StatefulWidget {
  const GetTabs({super.key});

  @override
  State<GetTabs> createState() => _GetTabsState();
}

class _GetTabsState extends State<GetTabs> {
  int pageIndex=0;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(

      width: size.width,
      height: 55,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
      color: AppStyles.primary.withOpacity(0.1)
      ),
      child: Row(
              children: [
                pageIndex==0?
                Flexible(child: GestureDetector(
                  onTap: (){
                    setState(() {
                      pageIndex=1;
                    });
                    
                  },

                  child: Padding(
                    padding: const EdgeInsets.all(6),
                    child: Container(
                      width:(size.width-30)/2,
                      height: 50,
                      decoration:BoxDecoration(
                        color:Colors.blue,
                        borderRadius: BorderRadius.circular(12)
                  
                      ),
                      child: Center(
                        child: Text('airtime',style: TextStyle(fontSize: 15,
                        color: AppStyles.white,
                        fontWeight: FontWeight.w500),
                        ),
                      ),
                      
                    ),
                    
                    ),
                )):GestureDetector(
                  onTap: (){
                    setState(() {
                      pageIndex=0;
                    });
                  },
                  child: Padding(
                      padding: const EdgeInsets.all(6),
                      child: Container(
                        width:(size.width-30)/2,
                        height: 50,
                        decoration:BoxDecoration(
                          //color:Colors.blue,
                          borderRadius: BorderRadius.circular(12)
                    
                        ),
                        child: Center(
                          child: Text('Airtime',style: TextStyle(fontSize: 15,
                          color: AppStyles.white,
                          fontWeight: FontWeight.w500),
                          ),
                        ),
                        
                      ),
                      
                      ),
                ),

                 pageIndex==1?
                Flexible(child: GestureDetector(
                  onTap: (){
                    setState(() {
                      pageIndex=0;
                    });
                    
                  },

                  child: Padding(
                    padding: const EdgeInsets.all(6),
                    child: Container(
                      width:(size.width-30)/2,
                      height: 50,
                      decoration:BoxDecoration(
                        color:Colors.blue,
                        borderRadius: BorderRadius.circular(12)
                  
                      ),
                      child: Center(
                        child: Text('bundles',style: TextStyle(fontSize: 15,
                        color: AppStyles.white,
                        fontWeight: FontWeight.w500),
                        ),
                      ),
                      
                    ),
                    
                    ),
                )):GestureDetector(
                  onTap: (){
                    setState(() {
                      pageIndex=1;
                    });
                  },
                  child: Padding(
                      padding: const EdgeInsets.all(6),
                      child: Container(
                        width:(size.width-30)/2,
                        height: 50,
                        decoration:BoxDecoration(
                          //color:Colors.blue,
                          borderRadius: BorderRadius.circular(12)
                    
                        ),
                        child: Center(
                          child: Text('Bundles',style: TextStyle(fontSize: 15,
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
}