import 'package:flutter/material.dart';
import 'package:registro_web/src/register/presenter/pages/subpages/actions_page.dart';
import 'package:registro_web/src/register/presenter/pages/subpages/category_page.dart';
import 'package:registro_web/src/register/presenter/pages/subpages/item_page.dart';
import 'package:registro_web/src/register/presenter/pages/subpages/order_page.dart';
import 'package:registro_web/src/register/presenter/pages/subpages/search_and_amount_page.dart';

class RegisterScreenWeb extends StatelessWidget {
  const RegisterScreenWeb({
    Key? key,
    required this.size,
    required this.appBarHeightPercentage,
  }) : super(key: key);

  final Size size;
  final double appBarHeightPercentage;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: size.width * 0.25,
          child: const OrderPage(),
        ),
        SizedBox(
          width: size.width * 0.75,
          child: Column(
            children: [
              SizedBox(
                height: size.height * (0.175 - appBarHeightPercentage),
                child: SearchAndAmountPage(),
              ),
              SizedBox(
                height: size.height * 0.7,
                child: Row(
                  children: [
                    SizedBox(
                      width: size.width * 0.25,
                      child: const CategoryPage(),
                    ),
                    SizedBox(
                      width: size.width * 0.50,
                      child: const ItemPage(),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: size.height * 0.125,
                child: const ActionsPage(),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
