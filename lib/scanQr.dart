import 'package:ambev_app/avaliacao.dart';
import 'package:ambev_app/dashboard.dart';
import 'package:ambev_app/drawer.dart';
import 'package:ambev_app/avaliacao.dart';
import 'package:flutter/material.dart';

class ScanQr extends StatefulWidget {
  @override
  _ScanQrState createState() => _ScanQrState();
}

class _ScanQrState extends State<ScanQr> {
  final _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    var sizeWidth = MediaQuery.of(context).size.width;
    var sizeHeight = MediaQuery.of(context).size.height;
    var sizeCard = (sizeHeight * 0.867) - (sizeHeight * 0.105);
    var sizeCard2 = (sizeHeight * 0.5622);

    final _pageController = PageController();

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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(
                          top: sizeCard * 0.02,
                          left: sizeWidth * 0.04,
                          right: sizeWidth * 0.01),
                      child: Text(
                        "Qual a boa de hoje?",
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
                height: sizeCard2 * 200,
                width: sizeWidth,
                color: Colors.grey[800],
                child: Scrollbar(
                  isAlwaysShown: true,
                  thickness: sizeWidth * 0.03,
                  controller: _scrollController,
                  child: SingleChildScrollView(
                      controller: _scrollController,
                      child: Column(
                        children: [
                          Container(
                            height: sizeCard * 1.0,
                            margin: EdgeInsets.only(top: sizeCard2 * 0.04),
                            child: Image.network(
                                "https://previews.123rf.com/images/bsd555/bsd5551809/bsd555180900122/107388121-qr-code-smartphone-scanner-color-icon-quick-response-code-matrix-barcode-scanning-mobile-phone-app-i.jpg"),
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
