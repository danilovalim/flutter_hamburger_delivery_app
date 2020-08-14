import 'package:flutter/material.dart';
import 'HeaderIcon.dart';
import 'HeaderText.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          child: Column(
            children: [
              HeaderIcon(icon: Icons.search),
              HeaderIcon(icon: Icons.person),
              HeaderIcon(icon: Icons.shopping_cart),
            ],
          ),
        ),
        Expanded(
          child: Container(
            child: Column(
              children: [
                HeaderText(
                  text: "BURGER",
                  fontFamily: "Bebas Neue",
                  fontSize: 55,
                  fontColor: Colors.white,
                ),
                HeaderText(
                  text: "SPOT",
                  fontFamily: "Roboto",
                  fontSize: 30,
                  fontColor: Colors.grey[600],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
