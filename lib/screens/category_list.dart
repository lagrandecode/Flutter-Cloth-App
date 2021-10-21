import 'package:cloths_app/constants/colors.dart';
import 'package:flutter/material.dart';

class CategoryList extends StatelessWidget {
  final String title;

  CategoryList(this.title);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 25, right: 25.0, top: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(title, style: TextStyle(fontSize: 18.0, color: kblack, fontWeight: FontWeight.bold),),
          Row(
            children: <Widget>[
              Text(
                "View All",
                style: TextStyle(
                    color: kprimaryColor,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(width: 5.0,),
              Container(
                child: Icon(Icons.arrow_forward),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
