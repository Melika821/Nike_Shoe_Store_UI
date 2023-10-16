import 'package:flutter/material.dart';
import 'package:nike_shoe_ui/style.dart';

class Secound_Screen extends StatelessWidget {
  const Secound_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color1,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: () {
                Navigator.pop(context);
              }, 
              icon: Icon(
                Icons.arrow_back_ios_outlined,
                color: color5,
              ),
            ),
            Icon(
              Icons.menu_rounded,
              color: color5,
              size: 35,
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Container(
              child: Center(
                child: Image.asset(
                  'assets/img1.png',
                  height: 250,
                ),
              ),
            ),
            SizedBox(
              height: 83.5,
            ),
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height / 2,
              decoration: BoxDecoration(
                color: color5,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.all(35),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Red shoe',
                      style: title1Style1,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      '1 pair',
                      style: title2Style2,
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Row(
                      children: [
                        CartCounter(),
                        SizedBox(
                          width: 130,
                        ),
                        Text(
                          '\$224',
                          style: price1Style1,
                        ),
                        Text(
                          '.00',
                          style: price2Style1,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      'Product Description',
                      style: title1Style2,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Aliqua id fugiat nostrud irure ex duis id quis ad et. Sunt qui esse pariatur duis deserunt mollit dolore cllium minim ternpor erim.',
                      style: title2Style2,
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(
                              right: 20,
                            ),
                            height: 50,
                            width: 58,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              border: Border.all(
                                color: color1
                              ),
                            ),
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.favorite,
                                color: color1,
                              ),
                            ),
                          ),
                          Expanded(
                            child: SizedBox(
                              height: 50,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: color1,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                ),
                                onPressed: () {}, 
                                child: Text(
                                  'Add to cart',
                                  style: title1Style3,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CartCounter extends StatefulWidget {
  const CartCounter({super.key});

  @override
  State<CartCounter> createState() => _CartCounterState();
}

class _CartCounterState extends State<CartCounter> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 40,
          height: 32,
          child: OutlinedButton(
            style: OutlinedButton.styleFrom(
              padding: EdgeInsets.zero,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
            onPressed: () {}, 
            child: Icon(
              Icons.remove,
              color: color7,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 10,
          ),
          child: Text(
            '01',
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
        SizedBox(
          width: 40,
          height: 32,
          child: OutlinedButton(
            style: OutlinedButton.styleFrom(
              padding: EdgeInsets.zero,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
            onPressed: () {}, 
            child: Icon(
              Icons.add,
              color: color7,
            ),
          ),
        ),
      ],
    );
  }
}
