import 'package:flutter/material.dart';
import 'package:nike_shoe_ui/body.dart';

class AppBar_Screen extends StatelessWidget {
  const AppBar_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(
              Icons.arrow_back_ios_outlined,
              color: Colors.grey[600],
            ),
            Icon(
              Icons.menu_rounded,
              color: Colors.grey[600],
              size: 35,
            ),
          ],
        ),
      ),
      body: Body(),
    );
  }
}