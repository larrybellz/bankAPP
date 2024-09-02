import 'package:bank_app/base/resources/styles.dart';
import 'package:bank_app/base/widgets/edit_dialog_box.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}


class _ProfilePageState extends State<ProfilePage> {
    //list of details
  List details=[
  'larry','0773564'
  ];
  //text controller
  final _nameController=TextEditingController();
  var _phoneNumberController=TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _phoneNumberController.text=details[1];
     _nameController.text=details[0];
     
  }
  
  void saveName(){
    setState(() {
      details[0]= _nameController.text;
      Navigator.pop(context);
    });
  }
  void editName(){
    showDialog(context: context, builder: (context){
      return  EditDialogBox(controller:  _nameController, onCancel: (){Navigator.pop(context);},
       onSave: saveName,nameAlertdialog: true,);
    }
    );


  }
  void editPhoneNumber(){
    showDialog(context: context, builder: (context){
      return EditDialogBox(controller:  _phoneNumberController, onCancel: (){Navigator.pop(context);}, onSave:savePhoneNumber,nameAlertdialog: false,);
    }
    );
  }
  void savePhoneNumber(){
    setState(() {
      details[1]=_phoneNumberController.text;
      Navigator.pop(context);
    });
  }

  
  @override
  Widget build(BuildContext context) {
    var name=details[0];
    var size = MediaQuery.of(context).size;
    var phoneNumber=details[1];
    return Scaffold(
        backgroundColor: AppStyles.primary,
        body: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              Stack(children: [
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      'assets/images/logo.jpg',
                      width: size.width * 0.4,
                      height: size.width * 0.4,
                    ),
                  ),
                ),
                 Positioned(
                  bottom: 0,
                  right: 0,
                  child: Container(
                    padding: const EdgeInsets.all(4),
                 
                    decoration:  BoxDecoration(
                         color: AppStyles.blue.withOpacity(0.5),
                      borderRadius: BorderRadius.all(Radius.circular(6))),
                    child: const Icon(
                      Icons.edit,
                      size: 20,
                    ),
                  ),
                )
              ]),
              const SizedBox(
                height: 30,
              ),
               Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(
                    Icons.person,
                    size: 30,
                  ),
                   Column(
                    children: [
                      const Text('Name',
                          style: TextStyle(
                              color: Colors.grey, fontWeight: FontWeight.bold)),
                      Text(name,
                          style: const TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold))
                    ],
                  ),
                  InkWell(
                    onTap: editName,
                    child: Icon(
                      Icons.edit,
                      size: 30,
                    ),
                  )
                ],
              ),
              const Divider(
                thickness: 1,
                height: 30,
                indent: 10,
              ),
               Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(
                    Icons.phone,
                    size: 30,
                  ),
                  Column(
                    children: [
                      const Text('phone number',
                          style: TextStyle(
                              color: Colors.grey, fontWeight: FontWeight.bold)),
                      Text(phoneNumber,
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold))
                    ],
                  ),
                  InkWell(
                    onTap: editPhoneNumber,
                    child: Icon(
                      Icons.edit,
                      size: 30,
                    ),
                  )
                ],
              )
            ],
          ),
        ));
  }
}
