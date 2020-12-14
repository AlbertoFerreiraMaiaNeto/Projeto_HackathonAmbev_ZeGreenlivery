import 'package:ambev_app/avaliacao.dart';
import 'package:ambev_app/drawer.dart';
import 'package:ambev_app/gridDash.dart';
import 'package:ambev_app/main.dart';
import 'package:ambev_app/scanQr.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  final _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    var sizeWidth = MediaQuery.of(context).size.width;
    var sizeHeight = MediaQuery.of(context).size.height;
    var sizeCard = (sizeHeight * 0.867) - (sizeHeight * 0.105);
    final _pageController = PageController();
    var sizeCard2 = (sizeHeight * 0.5622);
    return PageView(
        controller: _pageController,
        physics: NeverScrollableScrollPhysics(),
        children: <Widget>[
          Scaffold(
              appBar: AppBar(
                title: Text("Menu"),
                backgroundColor: Colors.black,
              ),
              drawer: CustomDrawer(_pageController),
              backgroundColor: Colors.white,
              body: Column(
                children: <Widget>[
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
                    margin: EdgeInsets.only(top: sizeWidth * 0.05),
                    height: 4,
                    width: sizeWidth * 0.40,
                    color: Colors.black,
                  ),
                  SizedBox(height: 40),
                  GridDash()
                ],
              )),
          Scaffold(
            appBar: AppBar(
              title: Text("Menu"),
              backgroundColor: Colors.black,
            ),
            drawer: CustomDrawer(_pageController),
            backgroundColor: Colors.white,
            body: Container(
              height: sizeCard2 * 200,
              width: sizeWidth,
              color: Colors.white,
              child: Scrollbar(
                isAlwaysShown: true,
                thickness: sizeWidth * 0.03,
                controller: _scrollController,
                child: SingleChildScrollView(
                    controller: _scrollController,
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(
                              top: sizeCard * 0.05,
                              left: sizeWidth * 0.01,
                              right: sizeWidth * 0.01),
                          child: Text(
                            "Ouro",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: 'Open Sans Extra Bold',
                                color: Color.fromARGB(255, 48, 48, 48),
                                fontSize: 35,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: sizeCard2 * 0.04),
                          child: Image.asset("images/skol.png"),
                        ),
                        Text(
                          "50/65",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: sizeCard2 * 0.04),
                          child: Image.asset("images/retornar.png"),
                        ),
                        Text(
                          "Cervejeiro Retornável",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: sizeWidth * 0.04),
                          height: 4,
                          width: sizeWidth * 2.70,
                          color: Colors.black,
                        ),
                        Container(
                          margin: EdgeInsets.only(
                              top: sizeCard * 0.05,
                              left: sizeWidth * 0.01,
                              right: sizeWidth * 0.01),
                          child: Text(
                            "Prata",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: 'Open Sans Extra Bold',
                                color: Color.fromARGB(255, 48, 48, 48),
                                fontSize: 35,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: sizeCard2 * 0.04),
                          child: Image.asset("images/brahma.png"),
                        ),
                        Text(
                          "32/50",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: sizeCard2 * 0.04),
                          child: Image.asset("images/vip.png"),
                        ),
                        Text(
                          "Cliente Prata",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: sizeWidth * 0.04),
                          height: 4,
                          width: sizeWidth * 2.70,
                          color: Colors.black,
                        ),
                        Container(
                          margin: EdgeInsets.only(
                              top: sizeCard * 0.05,
                              left: sizeWidth * 0.01,
                              right: sizeWidth * 0.01),
                          child: Text(
                            "Bronze",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: 'Open Sans Extra Bold',
                                color: Color.fromARGB(255, 48, 48, 48),
                                fontSize: 35,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: sizeCard2 * 0.04),
                          child: Image.asset("images/duvel.png"),
                        ),
                        Text(
                          "10/25",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: sizeCard2 * 0.04),
                          child: Image.asset("images/natal.png"),
                        ),
                        Text(
                          "Natal Cervejeiro",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: sizeWidth * 0.04),
                          height: 4,
                          width: sizeWidth * 2.70,
                          color: Colors.black,
                        ),
                        Container(
                          margin: EdgeInsets.only(
                              top: sizeCard * 0.05,
                              left: sizeWidth * 0.01,
                              right: sizeWidth * 0.01),
                          child: Text(
                            "Não Conquistadas",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: 'Open Sans Extra Bold',
                                color: Color.fromARGB(255, 48, 48, 48),
                                fontSize: 35,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: sizeCard2 * 0.04),
                          child: Image.asset("images/amigos.png"),
                        ),
                        Text(
                          "Compartilhou com 20 amigos",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: sizeCard2 * 0.04),
                          child: Image.asset(
                            "images/colorado.png",
                          ),
                        ),
                        Text(
                          "0/5",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    )),
              ),
            ),
          ),
          Scaffold(
            appBar: AppBar(
              title: Text("Menu"),
              backgroundColor: Colors.black,
            ),
            drawer: CustomDrawer(_pageController),
            backgroundColor: Colors.white,
            body: Container(
              height: sizeCard2 * 200,
              width: sizeWidth,
              color: Colors.white,
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
                        Row(
                          children: <Widget>[
                            Container(
                                margin: EdgeInsets.only(
                                    left: sizeWidth * 0.120,
                                    bottom: sizeCard * 0.35),
                                child: Container(
                                  height: sizeHeight * 0.08,
                                  width: sizeWidth * 0.75,
                                  child: RaisedButton(
                                    onPressed: () async {
                                      Navigator.of(context).push(
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  Avaliacao()));
                                    },
                                    textColor: Color.fromARGB(255, 33, 64, 154),
                                    splashColor: Colors.white,
                                    color: Colors.grey,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(15.0),
                                        side: BorderSide(color: Colors.black)),
                                    child: Text(
                                      "SCANNEAR",
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
          ),
          Scaffold(
            appBar: AppBar(
              title: Text("Menu"),
              backgroundColor: Colors.black,
            ),
            drawer: CustomDrawer(_pageController),
            backgroundColor: Colors.white,
            body: Container(
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
                          child: Image.asset("images/gps.png"),
                        ),
                      ],
                    )),
              ),
            ),
          ),
        ]);
  }
}

/*        body: Column(children: [
      SingleChildScrollView(
        child: Container(
          height: sizeCard,
          width: sizeWidth,
          decoration: BoxDecoration(
              border: Border.all(width: 1, color: Colors.black38),
              borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30)),
              color: Color.fromARGB(255, 33, 64, 154)),
          child: Column(
            children: <Widget>[
              Column(
                children: <Widget>[
                  Container(
                    height: sizeCard * 0.23,
                    width: sizeWidth * 0.33,
                    margin: EdgeInsets.only(
                        top: sizeHeight * 0.054, left: sizeWidth * 0.04),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://i0.wp.com/www.bebidaexpressblog.com.br/wp-content/uploads/2015/08/blog.jpg?fit=740%2C452"),
                          fit: BoxFit.fill),
                    ),
                  ),
                  SizedBox(height: 40),
                  GridDash()
                ],
              )
            ],
          ),
        ),
      )
    ]));*/
