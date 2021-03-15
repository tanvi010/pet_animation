import 'package:flutter/material.dart';
import 'package:pe_ui_app/HomeScreen.dart';

import 'Configuration.dart';

class Screen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
              child: Column(
            children: [
              Expanded(
                flex: 3,
                child: Container(
                  color: Colors.blueGrey[300],
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  color: Colors.white,
                ),
              ),
            ],
          )),
          Container(
            margin: EdgeInsets.only(top: 40),

            child: Align(
              alignment: Alignment.topCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(icon: Icon(Icons.arrow_back_ios), onPressed: (){
                    Navigator.pop(context);

                  }),
                  IconButton(icon: Icon(Icons.share), onPressed: (){})
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            child: Align(
              alignment: Alignment.topCenter,
              child: Hero(
                tag: 1,
                  child: Image.asset('Assects/Image/pet-cat2.png',)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 120),
            child: Align(
              alignment: Alignment.center,
              child: Container(
                height: 150,
                decoration: BoxDecoration(
                  boxShadow: shadowList,
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white
                ),
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    Row(
                      children: [
                      ],
                    )
                  ],
                ),

              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 15),
              height: 100,
              decoration: BoxDecoration(
                  boxShadow: shadowList,
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.grey[200]
              ),
              child: Row(
                children: [
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                        boxShadow: shadowList,
                        borderRadius: BorderRadius.circular(15),
                        color: primaryColor
                    ),
                    child: Icon(Icons.favorite_border,color: Colors.white,),

                  ),
                  SizedBox(width: 10,),
                  Expanded(child: Container(
                    height: 60,
                    decoration: BoxDecoration(
                        boxShadow: shadowList,
                        borderRadius: BorderRadius.circular(15),
                        color: primaryColor
                    ),
                    child: Center(child: Text("Adoption",style: TextStyle(color: Colors.white,fontSize: 24,fontWeight: FontWeight.w500),))
                  ))
                ],
              ),


            ),
          )
        ],
      ),
    );
  }
}
