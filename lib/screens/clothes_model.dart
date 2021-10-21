import 'package:cloths_app/constants/colors.dart';
import 'package:cloths_app/models/clothes.dart';
import 'package:cloths_app/screens/detail_page.dart';
import 'package:flutter/material.dart';
import 'package:concentric_transition/concentric_transition.dart';

class ClothItem extends StatelessWidget {
  final Clothes clothes;

  ClothItem(this.clothes);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 25.0, top: 10.0),
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (_) => DetailPage(clothes),
            ),
          );
        },
        child: Card(
          elevation: 3.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(15.0),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Container(
                    height: 170.0,
                    width: 210.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      ),
                      image: DecorationImage(
                        image: AssetImage(clothes.imageUrl),
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                  ),
                  Positioned(
                    right: 10,
                    top: 10,
                    child: Container(
                      padding: EdgeInsets.all(5.0),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: kwhite,
                      ),
                      child: Icon(
                        Icons.favorite,
                        color: kred,
                      ),
                    ),
                  ),
                ],
              ),
              Text(
                clothes.title,
                style: TextStyle(
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                clothes.subtitle,
                style: TextStyle(color: kblack),
              ),
              Text(
                clothes.price,
                style: TextStyle(color: kprimaryColor),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
