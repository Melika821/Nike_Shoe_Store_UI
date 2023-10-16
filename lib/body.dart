import 'package:flutter/material.dart';
import 'package:nike_shoe_ui/navigation_bar.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 25,
            ),
            child: Text(
              'Nike Shoe Store',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.grey[800],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: SizedBox(
              height: 55,
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.grey[300],
                  hintText: 'Search',
                  hintStyle: TextStyle(
                    color: Colors.grey[800],
                    fontSize: 18,
                  ),
                  prefixIcon: IconButton(
                    onPressed: () {}, 
                    icon: Icon(
                      Icons.search,
                      color: Colors.grey[600],
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: NavigationBar_Screen(),
          ),
        ],
      ),
    );
  }
}