import 'package:flutter/material.dart';
import 'package:registro_web/src/register/presenter/pages/subpages/widgets/banner_widget.dart';
import 'package:registro_web/src/register/presenter/pages/subpages/widgets/card_order_widget.dart';
import 'package:registro_web/src/register/presenter/pages/subpages/widgets/cash_widget.dart';
import 'package:registro_web/src/register/presenter/pages/subpages/widgets/elevated_button_widget.dart';

class OrderPage extends StatefulWidget {
  const OrderPage({Key? key}) : super(key: key);

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final appBarHeightPercentage = ((AppBar().preferredSize.height * 100) / size.height) / 100;
    return Column(
      children: [
        SizedBox(
          height: size.height * (0.25 - appBarHeightPercentage),
          width: double.infinity,
          child: Container(
            margin: const EdgeInsets.only(top: 10, left: 10, right: 10),
            child: const BannerWidget(),
          ),
        ),
        SizedBox(
          height: size.height * 0.10,
          child: Container(
            margin: const EdgeInsets.only(left: 10, right: 10),
            child: Row(
              children: [
                ElevatedButtonWidget(title: 'FOR HERE', secondaryColor: true, onPressed: () {}),
                const SizedBox(width: 5),
                ElevatedButtonWidget(title: 'Orders', onPressed: () {}),
                const SizedBox(width: 5),
                ElevatedButtonWidget(title: 'FOR HERE', centerIcon: Icons.print, onPressed: () {}),
              ],
            ),
          ),
        ),
        SizedBox(
          height: size.height * 0.50,
          child: Container(
            margin: const EdgeInsets.only(left: 10, right: 10),
            color: Theme.of(context).colorScheme.tertiary,
            child: Column(
              children: [
                CardOrderWidget(
                  title: 'Misto Quente',
                  forHereOnPressed: () {},
                  modifyOnPressed: () {},
                  quantity: 1,
                  price: 3.55,
                  itemsAdd: const ['Cebola (+0.40)', 'Tomate (+0.40)'],
                  itemsRemove: const ['Frango ( Chicken )', 'Beterraba'],
                  description: 'Bem Passado',
                ),
                CardOrderWidget(
                  title: 'Misto Quente',
                  forHereOnPressed: () {},
                  modifyOnPressed: () {},
                  quantity: 1,
                  price: 3.55,
                  itemsAdd: const ['Cebola (+0.40)', 'Tomate (+0.40)'],
                  itemsRemove: const ['Frango ( Chicken )', 'Beterraba'],
                  description: 'Bem Passado',
                  isSelected: true,
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: size.height * 0.15,
          child: Container(
            color: Theme.of(context).colorScheme.tertiary,
            margin: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
            padding: const EdgeInsets.all(10),
            child: Column(
              children: const [
                CashWidget(title: 'Subtotal', value: 7.10),
                CashWidget(title: 'Tax', value: 7.10),
                CashWidget(
                  title: 'Total',
                  value: 7.10,
                  isBig: true,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
