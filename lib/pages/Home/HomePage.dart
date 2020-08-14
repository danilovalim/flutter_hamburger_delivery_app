import 'package:flutter/material.dart';
import 'package:hamburger_delivery_app/shared/models/Item.dart';
import 'widgets/Header.dart';
import 'widgets/ItemsList.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Item> items = [];

  void loadItems() {
    setState(() {
      items.add(
          new Item(name: 'CLASSIC', image: 'classic.png', price: '\$12.00', details: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin tristique mi elit, quis laoreet orci consequat ac. Sed nisl sapien, venenatis iaculis tristique eleifend, lobortis quis odio.'));
      items.add(new Item(name: 'DOUBLE', image: 'two.png', price: '\$10.00', details: 'Aliquam at diam imperdiet, facilisis urna posuere, pharetra ipsum. In id ante sed lectus semper varius. Nulla tempus varius purus.'));
      items.add(
          new Item(name: 'CHICKEN', image: 'chicken.png', price: '\$11.00', details: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin tristique mi elit, quis laoreet orci consequat ac. Sed nisl sapien, venenatis iaculis tristique eleifend, lobortis quis odio.'));
      items.add(new Item(name: 'MEAT', image: 'meat.png', price: '\$12.00', details: 'Aliquam at diam imperdiet, facilisis urna posuere, pharetra ipsum. In id ante sed lectus semper varius. Nulla tempus varius purus.'));
      items.add(new Item(name: 'SHARK', image: 'shark.png', price: '\$13.00', details: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin tristique mi elit, quis laoreet orci consequat ac. Sed nisl sapien, venenatis iaculis tristique eleifend, lobortis quis odio.'));
      items.add(new Item(name: 'BBQ', image: 'bbq.png', price: '\$15.00', details: 'Aliquam at diam imperdiet, facilisis urna posuere, pharetra ipsum. In id ante sed lectus semper varius. Nulla tempus varius purus.'));
    });
  }

  @override
  void initState() {
    super.initState();

    loadItems();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          child: Column(
            children: [
              Header(),
              SizedBox(height: 20),
              ItemsList(items: items),
            ],
          ),
        ),
      ),
    );
  }
}
