import 'package:flutter/material.dart';
import 'package:registro_web/src/register/presenter/pages/subpages/widgets/option_widget.dart';

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
