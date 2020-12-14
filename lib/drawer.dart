import 'package:ambev_app/drawerTile.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  final PageController pageController;
  CustomDrawer(this.pageController);
  @override
  Widget build(BuildContext context) {
    var sizeWidth = MediaQuery.of(context).size.width;
    var sizeHeight = MediaQuery.of(context).size.height;
    var sizeCard = (sizeHeight * 0.867) - (sizeHeight * 0.105);
    Widget _buildDrawerBack() => Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.black, Colors.black],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomCenter)),
        );
    return Drawer(
      child: Stack(
        children: <Widget>[
          _buildDrawerBack(),
          ListView(
            padding: EdgeInsets.only(left: 32.0, top: 16.0),
            children: <Widget>[
              Container(
                padding: EdgeInsets.fromLTRB(0.0, 8.0, 8.0, 8.0),
                child: Stack(
                  children: <Widget>[
                    Positioned(
                      top: sizeCard * 0.08,
                      left: sizeCard * 0.001,
                      child: Container(
                        height: sizeCard * 0.19,
                        width: sizeWidth * 0.32,
                        margin: EdgeInsets.only(
                            top: sizeHeight * 0.014, left: sizeWidth * 0.017),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                              width: sizeWidth * 0.005, color: Colors.black),
                          image: DecorationImage(
                              image: NetworkImage(
                                  "https://media.discordapp.net/attachments/787134387694469135/787735603906215936/unknown.png"),
                              fit: BoxFit.fill),
                        ),
                      ),
                    ),
                    Center(
                        child: Container(
                      margin: EdgeInsets.only(
                          top: sizeCard * 0.18, left: sizeCard * 0.18),
                      child: Text("Olá, Zé\n\n\n\n",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                              fontStyle: FontStyle.italic,
                              fontFamily: 'Open Sans Extra Bold')),
                    )),
                    Center(
                        child: Container(
                      margin: EdgeInsets.only(
                          top: sizeCard * 0.23, left: sizeCard * 0.18),
                      child: Text("Z\$: 30.00",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                              fontStyle: FontStyle.italic,
                              fontFamily: 'Open Sans Extra Bold')),
                    )),
                  ],
                ),
              ),
              DrawerTile(Icons.home, 'Inicio', pageController, 0),
              DrawerTile(Icons.star, 'Conquistas', pageController, 1),
              DrawerTile(Icons.scanner, 'QR Scanner', pageController, 2),
              DrawerTile(Icons.location_on, 'Localizador', pageController, 3),
              DrawerTile(Icons.card_travel, 'Sacola', pageController, 4),
            ],
          )
        ],
      ),
    );
  }
}
