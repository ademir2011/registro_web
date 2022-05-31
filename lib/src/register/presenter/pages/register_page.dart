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
    final size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.all(15),
      child: Row(
        children: [
          SizedBox(
            width: size.width * 0.23,
            child: TextFormField(
              decoration: const InputDecoration(hintText: 'Search Items'),
            ),
          ),
          const SizedBox(width: 25),
          OptionWidget(onPressed: () {}, symbol: '\$', symbolColor: true),
          OptionWidget(onPressed: () {}, symbol: '#', symbolColor: true),
          ListView.builder(
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemCount: 9,
            itemBuilder: (ctx, index) {
              return Align(
                child: OptionWidget(
                  onPressed: () {},
                  symbol: (index + 1).toString(),
                  isSelected: index == 0,
                ),
              );
            },
          ),
          const Spacer(),
          OptionWidget(
            onPressed: () {},
            icon: Icons.highlight_remove_sharp,
            withBorder: false,
          ),
        ],
      ),
    );
  }
}

class OptionWidget extends StatelessWidget {
  final String? symbol;
  final bool symbolColor;
  final bool isSelected;
  final IconData? icon;
  final bool withBorder;
  final void Function()? onPressed;

  const OptionWidget({
    Key? key,
    this.symbol,
    this.symbolColor = false,
    this.isSelected = false,
    this.withBorder = true,
    this.icon,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        width: 50,
        height: 50,
        margin: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: symbolColor
              ? const Color(0xffffac02)
              : isSelected
                  ? Theme.of(context).colorScheme.secondary
                  : null,
          border: withBorder
              ? Border.all(
                  color: const Color(0xffc1c1c1),
                  width: 2,
                )
              : null,
        ),
        child: Center(
          child: icon != null
              ? Icon(icon, size: 40)
              : Text(
                  symbol != null ? symbol! : '',
                  style: const TextStyle(fontSize: 25),
                ),
        ),
      ),
    );
  }
}
