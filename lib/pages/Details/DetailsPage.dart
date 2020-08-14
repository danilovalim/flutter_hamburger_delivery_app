import 'package:flutter/material.dart';
import 'package:hamburger_delivery_app/shared/models/Item.dart';
import 'widgets/AddToCartBar.dart';
import 'widgets/ItemDetails.dart';

class DetailsPage extends StatefulWidget {
  final Item item;

  const DetailsPage({this.item});

  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {},
          )
        ],
      ),
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ItemDetails(item: widget.item),
            AddToCartBar(),
          ],
        ),
      ),
    );
  }
}
