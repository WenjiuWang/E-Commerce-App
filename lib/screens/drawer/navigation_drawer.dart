import 'package:ecommerceapp/routes/app_routes.dart';
import 'package:ecommerceapp/widgets/drawer_item.dart';
import 'package:flutter/material.dart';

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          drawerItem(text: 'Home', onTap: () => Navigator.pushReplacementNamed(context, AppRoutes.home))
        ],
      ),
    );
  }
}