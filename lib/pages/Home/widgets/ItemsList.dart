import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hamburger_delivery_app/shared/models/Item.dart';

import 'ItemList.dart';

class ItemsList extends StatelessWidget {
  final List<Item> items;

  const ItemsList({
    this.items,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, crossAxisSpacing: 15, mainAxisSpacing: 15),
        itemCount: items.length,
        itemBuilder: (context, index) {
          Item item = items[index];
          return ItemList(
            item: item,
          );
        },
      ),
    );
  }
}
