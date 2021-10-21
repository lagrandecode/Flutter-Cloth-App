import 'package:cloths_app/constants/colors.dart';
import 'package:cloths_app/models/clothes.dart';
import 'package:cloths_app/screens/category_list.dart';
import 'package:cloths_app/screens/clothes_model.dart';
import 'package:flutter/material.dart';

class Recommendation extends StatelessWidget {


  @override
  Widget build(BuildContext context) {

    return Container(
      child: Column(
        children: <Widget>[
          CategoryList("Best of Sell"),
          Card(
            elevation: 3.0,
            margin: EdgeInsets.only(left: 25.0, right: 25.0, top: 20.0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(10.0),
              ),
            ),
            child: Stack(

              children: <Widget>[
                Positioned(
                  top: 0,
                  right: 0,
                  child: Container(
                    padding: EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: kwhite,
                    ),
                    child: Icon(Icons.favorite, color: kred,),
                  ),),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Row(
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10),),
                        ),
                        height: 100,
                        width: 100,
                        child: ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(10),),
                          child: Image.asset("assets/images/arrival13.png"),
                        ),
                      ),
                      SizedBox(width: 20.0,),

                      Container(

                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("Nike"),
                            Text("Female Bounce"),
                            Text("\$45.00"),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Card(
            elevation: 3.0,
            margin: EdgeInsets.only(left: 25.0, right: 25.0, top: 20.0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(10.0),
              ),
            ),
            child: Stack(

              children: <Widget>[
                Positioned(
                  top: 0,
                  right: 0,
                  child: Container(
                    padding: EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: kwhite,
                    ),
                    child: Icon(Icons.favorite, color: kred,),
                  ),),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Row(
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                        ),
                        height: 100,
                        width: 100,
                        child: ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(10),),
                          child: Image.asset("assets/images/arrival1.png",width: 89,),
                        ),
                      ),
                      SizedBox(width: 20.0,),

                      Container(

                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("Armani"),
                            Text("Giogio Jacket"),
                            Text("\$45.00"),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Card(
            elevation: 3.0,
            margin: EdgeInsets.only(left: 25.0, right: 25.0, top: 20.0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(10.0),
              ),
            ),
            child: Stack(

              children: <Widget>[
                Positioned(
                  top: 0,
                  right: 0,
                  child: Container(
                    padding: EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: kwhite,
                    ),
                    child: Icon(Icons.favorite, color: kred,),
                  ),),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Row(
                    children: <Widget>[
                      Container(
                        height: 100,
                        width: 100,
                        child: ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(10),),
                          child: Image.asset("assets/images/arrival2.png",),
                        ),
                      ),
                      SizedBox(width: 20.0,),

                      Container(

                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("Armani"),
                            Text("Giogio Jacket"),
                            Text("\$45.00"),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Card(
            elevation: 3.0,
            margin: EdgeInsets.only(left: 25.0, right: 25.0, top: 20.0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(10.0),
              ),
            ),
            child: Stack(

              children: <Widget>[
                Positioned(
                  top: 0,
                  right: 0,
                  child: Container(
                    padding: EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: kwhite,
                    ),
                    child: Icon(Icons.favorite, color: kred,),
                  ),),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Row(
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10),),
                        ),
                        height: 100,
                        width: 100,
                        child: ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(10),),
                          child: Image.asset("assets/images/arrival4.png", width: 90,),
                        ),
                      ),

                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("Nike"),
                            Text("All Red"),
                            Text("\$45.00"),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
