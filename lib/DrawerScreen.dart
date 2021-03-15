import 'package:flutter/material.dart';
import 'package:pe_ui_app/Configuration.dart';
class DrawerScreen extends StatefulWidget {
  @override
  _DrawerScreenState createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 50,bottom: 30,left: 10),
      color: primaryColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.white,
                ),
                SizedBox(width: 10,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Tanvi Prajapati',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16),),
                    Text('Active Status',style: TextStyle(color: Colors.white,fontWeight:FontWeight.w500,fontSize: 14),),
                  ],
                ),

              ],
            ),
          ),
          Column(
            children:
              drawerItems.map((element) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Icon(element['icon'],color: Colors.white,size: 20,),
                    SizedBox(width: 10,),
                    Text(element['title'],style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 18),),
                  ],

                ),
              )).toList(),


          ),

          Row(
            children: [
              Icon(Icons.settings,color: Colors.white,),
              SizedBox(width: 10,),
              Text('Settings',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16),),
              SizedBox(width: 10,),
              Container(
                width: 2,
                height: 16,
                color: Colors.white,
              ),
              SizedBox(width: 10,),
              TextButton(onPressed: null, child: Text('Log Out',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16),))
            ],
          ),
        ],
      ) ,

    );

  }
}
