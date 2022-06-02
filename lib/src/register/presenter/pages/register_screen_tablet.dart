import 'package:flutter/material.dart';
import 'package:registro_web/src/register/presenter/pages/subpages/actions_page.dart';
import 'package:registro_web/src/register/presenter/pages/subpages/category_page.dart';
import 'package:registro_web/src/register/presenter/pages/subpages/item_page.dart';
import 'package:registro_web/src/register/presenter/pages/subpages/order_page.dart';
import 'package:registro_web/src/register/presenter/pages/subpages/search_and_amount_page.dart';

class RegisterScreenTablet extends StatelessWidget {
  const RegisterScreenTablet({
    Key? key,
    required this.size,
    required this.appBarHeightPercentage,
  }) : super(key: key);

  final Size size;
  final double appBarHeightPercentage;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: size.height * (0.2 - appBarHeightPercentage),
            child: SearchAndAmountPage(),
          ),
          SizedBox(
            height: size.height * 0.5,
            child: const CategoryPage(),
          ),
          const SizedBox(height: 20),
          SizedBox(
            height: size.height * 0.5,
            child: const ItemPage(),
          ),
          const SizedBox(height: 20),
          SizedBox(
            width: size.width,
            child: const OrderPage(),
          ),
          SizedBox(
            height: size.height * 0.125,
            child: const ActionsPage(),
          ),
        ],
      ),
    );
  }
}
