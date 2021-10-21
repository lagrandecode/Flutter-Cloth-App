import 'package:cloths_app/constants/colors.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top, left: 25.0,right: 25.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: [
              RichText(
                text: TextSpan(children: [
                  TextSpan(
                      text: "Oluwaseun, what Are You\nLooking For? ",
                      style: TextStyle(fontSize: 15.0, color: kblack, fontWeight: FontWeight.bold)),
                  TextSpan(text: "👀", style: TextStyle(fontSize: 15.0)),
                ]),
              ),
            ],
          ),
          Stack(
            children:<Widget> [

              Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10),),

                  color: kwhite,
                  boxShadow: [BoxShadow(
                    color: kgrey,
                    blurRadius: 0.1,
                    spreadRadius: 0.1,
                    offset: Offset(0,1),

                  ),],
                ),
                child: Icon(Icons.shopping_cart_outlined, size: 30.0, color: kgrey,),
              ),
              Positioned(
                right: 10,
                top: 10,
                child: Container(
                  width: 10,
                  height: 10,
                  decoration: BoxDecoration(
                    color: kprimaryColor,
                    shape: BoxShape.circle,
                  ),
                ),),
            ],

          ),
        ],
      ),
    );
  }
}
