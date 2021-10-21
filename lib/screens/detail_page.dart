
import 'package:cloths_app/models/clothes.dart';
import 'package:cloths_app/screens/bottom_detail.dart';
import 'package:cloths_app/screens/carousel_appbar.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';



class DetailPage extends StatelessWidget {


  final Clothes clothes;
  DetailPage(this.clothes);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CarouselAppBar(clothes),
            BottomDetail(clothes),


          ],
        ),
      ),
    );
  }
}
