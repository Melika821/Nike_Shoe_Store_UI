import 'package:flutter/material.dart';
import 'package:nike_shoe_ui/modelClass.dart';
import 'package:nike_shoe_ui/secound_Screen.dart';
import 'package:nike_shoe_ui/style.dart';

class GirdView_Screen extends StatefulWidget {
  const GirdView_Screen({super.key});

  @override
  State<GirdView_Screen> createState() => _GirdView_ScreenState();
}

class _GirdView_ScreenState extends State<GirdView_Screen> {

  List<ModelClass> modelClass = [
    ModelClass(
      id: '1', 
      title1: 'Red', 
      title2: 'A pair', 
      price1: '\$24',
      price2: '.00', 
      color: color1,
    ),

    ModelClass(
      id: '2', 
      title1: 'Orange', 
      title2: 'A pair', 
      price1: '\$24',
      price2: '.00', 
      color: color2,
    ),

    ModelClass(
      id: '3', 
      title1: 'Orange', 
      title2: 'A pair', 
      price1: '\$24',
      price2: '.00', 
      color: color3,
    ),

    ModelClass(
      id: '4', 
      title1: 'Red', 
      title2: 'A pair', 
      price1: '\$24', 
      price2: '.00',
      color: color4,
    ),
  ];

  List<ImageModel> imageModel = [
    ImageModel(
      image: 'assets/img1.png',
    ),

    ImageModel(
      image: 'assets/img2.png',
    ),

    ImageModel(
      image: 'assets/img3.png',
    ),

    ImageModel(
      image: 'assets/img4.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(18),
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 12,
                childAspectRatio: 7/10,
              ),
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: modelClass.length,
              itemBuilder: (context, index) => Stack(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context, 
                        MaterialPageRoute(
                          builder: (context) => Secound_Screen(),
                        ),
                      );
                    },
                  ),
                  Card(
                    margin: EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 10,
                    ),
                    color: modelClass[index].color,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                    elevation: 3,
                    child: SizedBox(
                      height: 250,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 5,
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        modelClass[index].title1,
                                        style: title1Style,
                                      ),
                                      Icon(
                                        Icons.check_circle,
                                        color: Colors.white,
                                      ),
                                    ],
                                  ),
                                  Text(
                                    modelClass[index].title2,
                                    style: title2Style,
                                  ),
                                  const SizedBox(
                                    height: 140,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Text(
                                        modelClass[index].price1,
                                        style: price1Style,
                                      ),
                                      Text(
                                        modelClass[index].price2,
                                        style: price2Style,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    right: -12,
                    bottom: 65,
                    child: Image.asset(
                      imageModel[index].image,
                      height: 135,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}