import 'package:cloths_app/constants/colors.dart';
import 'package:cloths_app/models/clothes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BottomDetail extends StatefulWidget {
  final Clothes clothes;

  BottomDetail(this.clothes);

  @override
  _BottomDetailState createState() => _BottomDetailState();
}

class _BottomDetailState extends State<BottomDetail> {
  final String gucci = "Gucci was founded in 1921 by Guccio Gucci in Florence, Tuscany. Under the direction of Aldo Gucci (son of Guccio), Gucci became a worldwide-known brand, an icon of the Italian Dolce Vita. Following family feuds during the 1980s, the Gucci family was entirely ousted from the capital of the company by 1993. After this crisis, the brand was revived with a provocative 'Porno Chic' props. In 1999, Gucci was acquired by the French conglomerate Pinault Printemps Redoute, which later became Kering. During the 2010s, Gucci became an iconic 'geek-chic' brand. ";

  final List<String> sizes = [
    "S", "M", "L", "XL", "XXL"
  ];

  var _colorSelected = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.all(15),
            child: Text(
              "${widget.clothes.title}",
              style: GoogleFonts.getFont(
                "Pacifico",
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 10.0, right: 10.0),
            child: Text(gucci, style: GoogleFonts.montserrat(fontSize: 16.5),),
          ),
          SizedBox(height: 20.0,),
          Container(
            margin: EdgeInsets.only(left: 30.0, right: 15.0),
            height: 50,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
                itemBuilder: (_, index)=> GestureDetector(
                  onTap: (){
                    setState(() {
                      _colorSelected = index;
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15.0),),
                      color:_colorSelected == index? kprimaryColor: kgrey.withOpacity(0.3),
                    ),
                    padding: EdgeInsets.all(10),
                    height: 50,
                    width: 70,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(sizes[index]),
                    ),

                  ),
                ),
                separatorBuilder: (_, index)=> SizedBox(width: 30.0,),
                itemCount: sizes.length),
          ),
        ],
      ),
    );
  }
}
