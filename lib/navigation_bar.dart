import 'package:flutter/material.dart';
import 'package:nike_shoe_ui/girdView_Screen.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class NavigationBar_Screen extends StatefulWidget {
  const NavigationBar_Screen({super.key});

  @override
  State<NavigationBar_Screen> createState() => _NavigationBar_ScreenState();
}

class _NavigationBar_ScreenState extends State<NavigationBar_Screen> {

  final controler = PersistentTabController(
    initialIndex: 0,
  );

  List<Widget> _buildScreen() {
    return [
      Text('Electricity'),
      Text('Favorite'),

      GirdView_Screen(),

      Text('Shopping Cart'),
      Text('Person'),
    ];
  }

  List<PersistentBottomNavBarItem> _navBarItem() {
    return [
      PersistentBottomNavBarItem(
        icon: Icon(
          Icons.electric_bolt_outlined,
          color: Colors.black,
          size: 35,
        ),
        activeColorPrimary: Colors.white,
        inactiveIcon: Icon(
          Icons.electric_bolt_outlined,
          color: Colors.grey[600],
          size: 30,
        ),
      ),
      PersistentBottomNavBarItem(
        icon: Icon(
          Icons.favorite_border,
          color: Colors.black,
          size: 35,
        ),
        activeColorPrimary: Colors.white,
        inactiveIcon: Icon(
          Icons.favorite_border,
          color: Colors.grey[600],
          size: 30,
        ),
      ),
      PersistentBottomNavBarItem(
        icon: Icon(
          Icons.home_outlined,
          color: Colors.black,
          size: 35,
        ),
        activeColorPrimary: Colors.white,
        inactiveIcon: Icon(
          Icons.home_outlined,
          color: Colors.grey[600],
          size: 30,
        ),
      ),
      PersistentBottomNavBarItem(
        icon: Icon(
          Icons.shopping_cart_outlined,
          color: Colors.black,
          size: 35,
        ),
        activeColorPrimary: Colors.white,
        inactiveIcon: Icon(
          Icons.shopping_cart_outlined,
          color: Colors.grey[600],
          size: 30,
        ),
      ),
      PersistentBottomNavBarItem(
        icon: Icon(
          Icons.person_2_outlined,
          color: Colors.black,
          size: 35,
        ),
        activeColorPrimary: Colors.white,
        inactiveIcon: Icon(
          Icons.person_2_outlined,
          color: Colors.grey[600],
          size: 30,
        ),
      ),
    ];
  } 

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context, 
      screens: _buildScreen(),
      items: _navBarItem(),
      controller: controler,
      decoration: NavBarDecoration(
        borderRadius: BorderRadius.circular(1),
      ),
      navBarStyle: NavBarStyle.style15,
    );
  }
}
