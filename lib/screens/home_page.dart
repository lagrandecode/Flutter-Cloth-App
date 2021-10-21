import 'package:cloths_app/constants/colors.dart';
import 'package:cloths_app/models/clothes.dart';

import 'package:cloths_app/screens/app_bar.dart';

import 'package:cloths_app/screens/clothes_list.dart';
import 'package:cloths_app/screens/recommendation.dart';

import 'package:cloths_app/screens/search_input.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kbackgroundColor,
      body: Container(
        padding: EdgeInsets.only(bottom: 10.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 5.0,
              ),
              CustomAppBar(),
              SizedBox(
                height: 5.0,
              ),
              SearchInput(),
              SizedBox(
                height: 5.0,
              ),
              ClothesList(),
              SizedBox(
                height: 5.0,
              ),
              Recommendation(
              ),
            ],
          ),
        ),
      ),

    );
  }
}
