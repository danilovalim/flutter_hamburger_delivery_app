import 'package:flutter/material.dart';
import 'package:hamburger_delivery_app/shared/models/Item.dart';

class ItemDetails extends StatelessWidget {
  final Item item;

  ItemDetails({
    this.item,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Container(
            alignment: Alignment.center,
            child: Hero(
              tag: item.image,
              child: Image.asset(
                'assets/images/${item.image}',
                width: MediaQuery.of(context).size.width * .5,
              ),
            ),
          ),
          SizedBox(height: 20),
          Container(
            width: double.infinity,
            child: Text(
              item.name,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xffE3A624),
                fontSize: 40,
                fontFamily: "Bebas Neue",
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 15),
          Text(
            item.details,
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey[500],
            ),
          ),
        ],
      ),
    );
  }
}
