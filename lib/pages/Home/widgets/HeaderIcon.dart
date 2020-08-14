import 'package:flutter/material.dart';

class HeaderIcon extends StatelessWidget {
  HeaderIcon({this.icon});

  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Icon(
        icon,
        size: 20,
        color: Colors.white,
      ),
    );
  }
}
