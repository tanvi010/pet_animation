import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:pe_ui_app/Configuration.dart';
import 'package:pe_ui_app/Screen2.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double xoffset = 0;
  double yoffset = 0;
  double scaleFactor = 1;
  bool isDrewerOpen = false;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      transform: Matrix4.translationValues(xoffset, yoffset, 0)
        ..scale(scaleFactor),
      duration: Duration(microseconds: 250),

      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(isDrewerOpen ? 40 :0.0),
        color: Colors.grey[200],

      ),

      child: SingleChildScrollView(
        physics: isDrewerOpen ? NeverScrollableScrollPhysics() : AlwaysScrollableScrollPhysics(),
        child: Column(
          children: [
            SizedBox(
              height: 50.0,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  isDrewerOpen
                      ? IconButton(
                          icon: Icon(Icons.arrow_back_ios),
                          onPressed: () {
                            setState(() {
                              xoffset = 0;
                              yoffset = 0;
                              scaleFactor = 1;
                              isDrewerOpen = false;
                            });
                          },
                        )
                      : IconButton(
                          icon: Icon(Icons.menu),
                          onPressed: () {
                            setState(() {
                              xoffset = 230;
                              yoffset = 150;
                              scaleFactor = 0.6;
                              isDrewerOpen = true;
                            });
                          }),
                  Column(
                    children: [
                      Text('Location'),
                      Row(
                        children: [
                          Icon(
                            Icons.location_on,
                            color: primaryColor,
                          ),
                          Text('India'),
                        ],
                      ),
                    ],
                  ),
                  CircleAvatar()
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(20)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.search),
                  Text("Search pet to adopt"),
                  Icon(Icons.settings),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 120,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: categories.length,
                itemBuilder: (context, index) {
                  return Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          padding: EdgeInsets.all(20),
                          margin: EdgeInsets.only(left: 20),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: shadowList,
                              borderRadius: BorderRadius.circular(10)),
                          child: Image.asset(
                            categories[index]['iconPath'],
                            height: 50,
                            width: 50,
                            color: Colors.grey[700],
                          ),
                        ),
                        Text(
                          categories[index]['name'],
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),

            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => Screen2()));
              },
              child: Container(
                height: 240,
                margin: EdgeInsets.symmetric(horizontal: 20),
                child:
                  Row(
                    children: [
                      Expanded(child: Stack(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: shadowList,
                              color: Colors.blueGrey[300]
                            ),
                            margin: EdgeInsets.only(top: 50),
                          ),
                          Align(child: Hero(
                            tag: 1,
                              child: Image.asset('Assects/Image/pet-cat2.png')),),

                        ],
                      )),
                      Expanded(child: Container(
                        margin: EdgeInsets.only(top: 65,bottom: 20),
                        decoration: BoxDecoration(color: Colors.white,
                        boxShadow: shadowList,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20),
                          bottomRight: Radius.circular(20)
                        )),
                      )),
                    ],
                  )
              ),
            ),
            Container(
                height: 240,
                margin: EdgeInsets.symmetric(horizontal: 20),
                child:
                Row(
                  children: [
                    Expanded(child: Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: shadowList,
                              color: Colors.orange[200]
                          ),
                          margin: EdgeInsets.only(top: 50),
                        ),
                        Align(child: Image.asset('Assects/Image/pet-cat1.png'),),

                      ],
                    )),
                    Expanded(child: Container(
                      margin: EdgeInsets.only(top: 65,bottom: 20),
                      decoration: BoxDecoration(color: Colors.white,
                          boxShadow: shadowList,
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(20),
                              bottomRight: Radius.circular(20)
                          )),
                    )),

                  ],
                )
            ),
            SizedBox(height: 100,)
          ],
        ),
      ),
    );
  }
}
