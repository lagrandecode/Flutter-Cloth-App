import 'package:cloths_app/models/clothes.dart';
import 'package:cloths_app/screens/category_list.dart';
import 'package:cloths_app/screens/clothes_model.dart';
import 'package:flutter/material.dart';

class ClothesList extends StatelessWidget {
  final clothesList = Clothes.generateClothes();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          CategoryList("New Arrival"),
          Container(
            height: 260.0,
            child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (_, index) => ClothItem(clothesList[index]),
                separatorBuilder: (_, index) => SizedBox(
                      width: 3.0,
                    ),
                itemCount: clothesList.length),
          ),
        ],
      ),
    );
  }
}
