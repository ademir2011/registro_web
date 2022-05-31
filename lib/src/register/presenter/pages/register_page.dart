import 'package:flutter/material.dart';
import 'package:registro_web/src/register/presenter/pages/subpages/category_page.dart';
import 'package:registro_web/src/register/presenter/pages/subpages/order_page.dart';
import 'package:registro_web/src/register/presenter/pages/subpages/search_and_amount_page.dart';
import 'package:registro_web/src/register/presenter/pages/subpages/widgets/elevated_button_widget.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final appBarHeightPercentage = ((AppBar().preferredSize.height * 100) / size.height) / 100;
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        actions: const [
          SizedBox(width: 15),
          Icon(Icons.arrow_back_rounded),
          Spacer(),
          Align(
            alignment: Alignment.center,
            child: Text(
              'Register',
            ),
          ),
          Spacer(),
          Icon(Icons.arrow_downward_rounded),
          SizedBox(width: 15),
          Icon(Icons.access_time_rounded),
          SizedBox(width: 15),
          Icon(Icons.lock),
          SizedBox(width: 15),
        ],
      ),
      body: Row(
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
                  height: size.height * (0.15 - appBarHeightPercentage),
                  child: const SearchAndAmountPage(),
                ),
                SizedBox(
                  height: size.height * 0.70,
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
                  height: size.height * 0.15,
                  child: const ActionsWidget(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ActionsWidget extends StatelessWidget {
  const ActionsWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(right: 10, bottom: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ElevatedButtonWidget(title: 'PAY', big: true, prefixIcon: Icons.money, onPressed: () {}),
          const SizedBox(width: 5),
          ElevatedButtonWidget(title: 'Discount', big: true, onPressed: () {}),
          const Spacer(),
          ElevatedButtonWidget(title: 'Kitchen', big: true, onPressed: () {}),
          const SizedBox(width: 5),
          ElevatedButtonWidget(title: 'My Cashier', big: true, onPressed: () {}),
          const SizedBox(width: 5),
          ElevatedButtonWidget(title: 'Restart Order', big: true, onPressed: () {}),
        ],
      ),
    );
  }
}

class ItemPage extends StatelessWidget {
  const ItemPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Align(
        alignment: Alignment.topLeft,
        child: Wrap(
          children: [
            ItemWidget(size: size),
            ItemWidget(size: size),
            ItemWidget(size: size),
            ItemWidget(size: size),
            ItemWidget(size: size),
            ItemWidget(size: size),
            ItemWidget(size: size),
            ItemWidget(size: size),
            ItemWidget(size: size),
            ItemWidget(size: size),
          ],
        ),
      ),
    );
  }
}

class ItemWidget extends StatelessWidget {
  const ItemWidget({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width * 0.24,
      height: 125,
      margin: const EdgeInsets.only(right: 5, bottom: 5),
      color: Theme.of(context).colorScheme.tertiary,
      child: Stack(
        alignment: Alignment.center,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 100),
            child: Text(
              'Bacon ,quejo e Ovo, Alface, tomate',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              height: 25,
              width: 50,
              margin: const EdgeInsets.all(5),
              color: Theme.of(context).cardColor,
              child: const Center(
                child: Text(
                  '3.69',
                  style: TextStyle(color: Colors.green),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
