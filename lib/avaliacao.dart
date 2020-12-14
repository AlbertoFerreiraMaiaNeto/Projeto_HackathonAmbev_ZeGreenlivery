import 'package:ambev_app/dashboard.dart';
import 'package:ambev_app/drawer.dart';
import 'package:ambev_app/gridDash.dart';
import 'package:ambev_app/avaliacao.dart';
import 'package:ambev_app/main.dart';
import 'package:flutter/material.dart';
import 'package:rating_bar/rating_bar.dart';

import 'scanQr.dart';

class Avaliacao extends StatefulWidget {
  @override
  _AvaliacaoState createState() => _AvaliacaoState();
}

class _AvaliacaoState extends State<Avaliacao> {
  final _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    var sizeWidth = MediaQuery.of(context).size.width;
    var sizeHeight = MediaQuery.of(context).size.height;
    var sizeCard = (sizeHeight * 0.867) - (sizeHeight * 0.105);
    var sizeCard2 = (sizeHeight * 0.5622);

    final _pageController = PageController();
    double _rating = 1;
    return PageView(
        controller: _pageController,
        physics: NeverScrollableScrollPhysics(),
        children: <Widget>[
          Scaffold(
            appBar: AppBar(
              title: Text("Menu"),
              backgroundColor: Colors.black,
            ),
            body: Column(children: <Widget>[
              SizedBox(
                height: 50,
              ),
              Padding(
                padding: EdgeInsets.only(left: 18, right: 16),
                child: Row(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(
                          top: sizeCard * 0.3,
                          left: sizeWidth * 0.04,
                          right: sizeWidth * 0.01),
                      child: Text(
                        "Gostou do produto?",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: 'Open Sans Extra Bold',
                            color: Color.fromARGB(255, 48, 48, 48),
                            fontSize: 35,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: Center(
                  child: Container(
                      child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      RatingBar(
                        onRatingChanged: (rating) =>
                            setState(() => _rating = rating),
                        filledIcon: Icons.star,
                        emptyIcon: Icons.star_border,
                        halfFilledIcon: Icons.star_half,
                        isHalfAllowed: true,
                        filledColor: Colors.green,
                        emptyColor: Colors.redAccent,
                        halfFilledColor: Colors.amberAccent,
                        size: 48,
                      ),
                      Row(
                        children: <Widget>[
                          Container(
                              margin: EdgeInsets.only(
                                  left: sizeWidth * 0.100,
                                  top: sizeHeight * 0.025),
                              child: Container(
                                height: sizeHeight * 0.08,
                                width: sizeWidth * 0.75,
                                child: RaisedButton(
                                  onPressed: () async {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (context) => Dashboard()));
                                  },
                                  textColor: Color.fromARGB(255, 33, 64, 154),
                                  splashColor: Colors.white,
                                  color: Colors.grey,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15.0),
                                      side: BorderSide(color: Colors.black)),
                                  child: Text(
                                    "ENVIAR",
                                    style: TextStyle(
                                      fontFamily: 'Open Sans Extra Bold',
                                      fontSize: (sizeWidth * 0.35) * 0.18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ))
                        ],
                      ),
                    ],
                  )),
                ),
              ),
            ]),
          )
        ]);
  }
}
