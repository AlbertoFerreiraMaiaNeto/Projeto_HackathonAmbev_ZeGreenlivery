import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

class GridDash extends StatelessWidget {
  Item item1 = new Item(
      title: "CERVEJAS",
      subtitle: "Veja nossas opções",
      event: "900 produtos",
      img: "images/cerveja2.png");
  Item item2 = new Item(
      title: "DESTILADOS",
      subtitle: "Veja nossas opções",
      event: "",
      img: "images/destilado2.png");
  Item item3 = new Item(
      title: "VINHOS",
      subtitle: "Veja nossas opções",
      event: "",
      img: "images/vinho.png");
  Item item4 = new Item(
      title: "Sem Álcool",
      subtitle: "Veja nossas opções",
      event: "",
      img: "images/semalcool.png");
  Item item5 = new Item(
      title: "Petiscos",
      subtitle: "Veja nossas opções",
      event: "",
      img: "images/petisco.png");
  Item item6 = new Item(
      title: "Outros",
      subtitle: "Veja nossas opções",
      event: "",
      img: "images/gelo.png");
  @override
  Widget build(BuildContext context) {
    List<Item> myList = [item1, item2, item3, item4, item5, item6];
    return Flexible(
        child: GridView.count(
      childAspectRatio: 1.0,
      padding: EdgeInsets.only(left: 16, right: 15),
      crossAxisCount: 2,
      crossAxisSpacing: 18,
      mainAxisSpacing: 18,
      children: myList.map((data) {
        return Container(
          decoration: BoxDecoration(
              color: Colors.black, borderRadius: BorderRadius.circular(10)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                data.img,
                width: 42,
              ),
              SizedBox(
                height: 14,
              ),
              Text(
                data.title,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 8),
              Text(
                data.subtitle,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 14),
              Text(
                data.event,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 11,
                    fontWeight: FontWeight.w600),
              ),
            ],
          ),
        );
      }).toList(),
    ));
  }
}

class Item {
  String title;
  String subtitle;
  String event;
  String img;
  Item({this.title, this.subtitle, this.event, this.img});
}
