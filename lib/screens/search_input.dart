import 'package:cloths_app/constants/colors.dart';
import 'package:flutter/material.dart';

class SearchInput extends StatelessWidget {
  final tagList = ["Woman", "T-Shirt", "Dress"];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 25.0, right: 25.0, top: 20.0),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Flexible(
                child: Card(
                  elevation: 3.0,
                  child: TextField(
                    cursorColor: kgrey,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                        borderSide: BorderSide.none
                      ),
                      hintText: "Search Aesthetic Shirt",
                      fillColor: kgrey,
                      filled: false,
                      prefixIcon: Container(
                        child: Icon(Icons.search),
                      ),
                    ),
                  ),
                ),
                
              ),
              Container(
                margin: EdgeInsets.only(left: 10.0),
                padding: EdgeInsets.all(15.0),
                decoration: BoxDecoration(
                  color: kprimaryColor,
                  borderRadius: BorderRadius.all(Radius.circular(10),),
                ),
                child: Image.asset("assets/icons/filter.png",width: 30,),
              ),
              
            ],
          ),
          Row(
            children: tagList.map((e) => Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.only(top: 10.0,left: 5.0),
              decoration: BoxDecoration(
                color: kprimaryColor,
                borderRadius: BorderRadius.all(Radius.circular(10),),
              ),
              child: Text(e),
            ),).toList(),
            
          ),
        ],
      ),
    );
  }
}
