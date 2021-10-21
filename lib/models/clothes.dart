import 'package:flutter/material.dart';

class Clothes {
  String title;
  String subtitle;
  String price;
  String imageUrl;
  List<String> detailUrl;

  Clothes(this.title, this.subtitle, this.price, this.imageUrl, this.detailUrl);

  static List<Clothes> generateClothes() => [

    Clothes(
      "Nike",
      "Air Force 4 Ladies",
      "\$39.50",
      "assets/images/arrival12.png",
      ["assets/images/arrival12.png", "assets/images/detail3.png","assets/images/arrival1.png", "assets/images/detail2.png"],
    ),
    Clothes(
      "Nike",
      "Bounce",
      "\$39.50",
      "assets/images/arrival13.png",
      ["assets/images/arrival13.png", "assets/images/detail3.png","assets/images/arrival1.png", "assets/images/detail2.png"],
    ),
    Clothes(
      "Nike",
      "All White",
      "\$39.50",
      "assets/images/arrival6.png",
      ["assets/images/arrival6.png", "assets/images/detail3.png","assets/images/arrival1.png", "assets/images/detail2.png"],
    ),
    Clothes(
      "Nike Air 270",
      "ShowBox",
      "\$39.50",
      "assets/images/arrival9.png",
      ["assets/images/arrival9.png", "assets/images/detail3.png","assets/images/arrival1.png", "assets/images/detail2.png"],
    ),
    Clothes(
      "Gucci Oversize",
      "Hoodie",
      "\$79.99",
      "assets/images/arrival1.png",
      ["assets/images/arrival1.png", "assets/images/detail3.png","assets/images/arrival1.png", "assets/images/detail2.png"],
    ),
    Clothes(
      "Man Coat",
      "Man Jacket",
      "\$39.50",
      "assets/images/arrival2.png",
      ["assets/images/arrival2.png", "assets/images/detail3.png","assets/images/arrival1.png", "assets/images/detail2.png"],
    ),

      ];
}
