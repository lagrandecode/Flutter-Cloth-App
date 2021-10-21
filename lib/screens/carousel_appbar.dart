import 'package:cloths_app/constants/colors.dart';
import 'package:cloths_app/models/clothes.dart';
import 'package:cloths_app/screens/color_picker.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class CarouselAppBar extends StatefulWidget {
  final Clothes clothes;

  CarouselAppBar(this.clothes);

  @override
  _CarouselState createState() => _CarouselState();
}

class _CarouselState extends State<CarouselAppBar> {
  CarouselController _carouselController = CarouselController();
  int _nextPage = 0;
  final List<Color> colors = [
    Color(0xffe6cfc6),
    Color(0xffeedfb5),
    Color(0xffcae2c5),
    Color(0xffbae6ee),
  ];
  int _currenColor = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: <Widget>[
          CarouselSlider(
            carouselController: _carouselController,
            items: widget.clothes.detailUrl
                .map(
                  (e) => Builder(
                    builder: (_) => Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        image: DecorationImage(
                            image: AssetImage("$e"), fit: BoxFit.cover),
                      ),
                    ),
                  ),
                )
                .toList(),
            options: CarouselOptions(
                height: 500,
                viewportFraction: 1.0,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 5),
                autoPlayAnimationDuration: Duration(milliseconds: 800)),
          ),
          Positioned(
            bottom: 30,
            right: 30,
            child: Column(
              children: [
                Container(
                  child: ListView.separated(
                      padding: EdgeInsets.zero,
                      scrollDirection: Axis.vertical,
                      itemBuilder: (_, index) => GestureDetector(
                          onTap: () {
                            setState(() {
                              _currenColor = index;
                            });
                          },
                          child: ColorPicker(
                              colors[index], _currenColor == index),),
                      separatorBuilder: (_, index) => SizedBox(
                            height: 5.0,
                          ),
                      itemCount: colors.length),
                  height: 185.0,
                  width: 60,
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  padding: EdgeInsets.all(10),
                ),
              ],
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).padding.top,
            child: Container(
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    child: Container(
                      margin: EdgeInsets.only(left: 10.0),
                      padding: EdgeInsets.all(10.0),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Icon(
                          Icons.arrow_back_ios,
                          color: kblack.withOpacity(0.8),
                        ),
                      ),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: kwhite.withOpacity(.8),),
                    ),
                    onTap: (){
                      setState(() {
                        Navigator.of(context).pop();
                      });
                    },
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 10.0),
                    padding: EdgeInsets.all(10.0),
                    child: Icon(Icons.shopping_cart_outlined, color: kblack.withOpacity(0.8),),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: kwhite.withOpacity(0.8),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
