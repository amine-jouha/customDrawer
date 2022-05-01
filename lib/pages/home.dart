import 'package:customdrawer/pages/menu.dart';
import 'package:customdrawer/pages/order.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/config.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const ZoomDrawer(
      menuBackgroundColor: Colors.blue,
      showShadow: true,
      // style: DrawerStyle.defaultStyle,
        menuScreen: Menu(),
        mainScreen:  Order()
    );
  }
}
