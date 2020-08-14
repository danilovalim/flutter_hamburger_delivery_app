import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hamburger_delivery_app/pages/Details/DetailsPage.dart';
import 'package:hamburger_delivery_app/shared/models/Item.dart';

class ItemList extends StatelessWidget {
  final Item item;

  const ItemList({
    this.item,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          CupertinoPageRoute(
            builder: (BuildContext context) => DetailsPage(item: item),
          ),
        );
      },
      child: Container(
        color: Color(0xff131313),
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Expanded(
              child: Center(
                child: Hero(
                  tag: item.image,
                  child: Image.asset(
                    'assets/images/${item.image}',
                    width: 130,
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  item.name,
                  style: TextStyle(
                    color: Color(0xffE3A624),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  item.price,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
