import 'package:flutter/material.dart';
import 'package:registro_web/src/register/presenter/pages/subpages/order_page.dart';

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
            child: Column(
              children: const [
                OrderPage(),
              ],
            ),
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
                  height: size.height * 0.75,
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
                  height: size.height * 0.10,
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
      color: Colors.purple,
    );
  }
}

class ItemPage extends StatelessWidget {
  const ItemPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(color: Colors.green);
  }
}

class CategoryPage extends StatelessWidget {
  const CategoryPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(color: Colors.red);
  }
}

class SearchAndAmountPage extends StatelessWidget {
  const SearchAndAmountPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
    );
  }
}
