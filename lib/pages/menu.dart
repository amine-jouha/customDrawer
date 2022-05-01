import 'package:customdrawer/data_menu/dataItem.dart';
import 'package:flutter/material.dart';

class MenuItems{
  static const payment = Fictif('payment', Icons.payment, );
  static const promos = Fictif('promos', Icons.card_giftcard, );
  static const notification = Fictif('notification', Icons.notifications, );
  static const help = Fictif('help', Icons.help, );
  static const aboutUs = Fictif('aboutUs', Icons.info_outline, );

  static const all = [
    payment,
    promos,
    notification,
    help,
    aboutUs
  ];
}
class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return  Theme(
      data: ThemeData.dark(),
      child: Scaffold(
        backgroundColor: Colors.blue,
        body: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Spacer(),
                ...MenuItems.all.map(buildMenuItem).toList(),
                const Spacer(flex: 2,)
              ],
            ),
        ),

      ),
    );

  }
  Widget buildMenuItem(Fictif item) => ListTile(
    minLeadingWidth: 20,
    leading: Icon(item.icon),
    title: Text(item.title),
    onTap: () {},
  );
}
