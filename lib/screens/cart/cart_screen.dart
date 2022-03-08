import 'package:flutter/material.dart';
import 'package:ecommerceapp/models/cart.dart';
import 'package:ecommerceapp/screens/drawer/navigation_drawer.dart';
import 'package:provider/provider.dart';
import 'components/body.dart';
import 'components/check_out_card.dart';

class CartScreen extends StatelessWidget {
  static String routeName = "/cart";

  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<CartList>(builder: (context, cartList, _) {
      var overallPrice = cartList.cartItems.isEmpty
          ? 0
          : cartList.cartItems
              .map((cart) => cart.item.price * cart.numOfItem)
              .reduce((value, element) => value + element);
      return Scaffold(
          appBar: buildAppBar(context),
          body: Body(cartList: cartList),
          bottomNavigationBar: CheckoutCard(overallPrice: overallPrice),
          drawer: const NavigationDrawer());
    });
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      iconTheme: const IconThemeData(color: Color(0xff202020)),
      title: Column(
        children: const [
          Text(
            "Your Cart",
            style: TextStyle(color: Colors.black),
          ),
        ],
      ),
    );
  }
}
