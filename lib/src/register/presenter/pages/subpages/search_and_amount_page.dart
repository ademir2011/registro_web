import 'package:flutter/material.dart';
import 'package:registro_web/src/register/presenter/pages/subpages/widgets/option_widget.dart';

class SearchAndAmountPage extends StatelessWidget {
  final _scrollController = ScrollController();
  SearchAndAmountPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(2.5),
      child: LayoutBuilder(
        builder: (ctx, constraints) {
          final maxOptionWidth = constraints.maxWidth * (size.width > 1000 ? 0.04 : 0.1);
          final maxOptionHeight = constraints.maxHeight * 0.5;
          return SizedBox(
            width: constraints.maxWidth,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (size.width <= 1000)
                  SizedBox(
                    height: constraints.maxHeight * 0.4,
                    child: TextFormField(
                      decoration: const InputDecoration(hintText: 'Search Items'),
                    ),
                  ),
                if (size.width <= 1000) const SizedBox(height: 10),
                Scrollbar(
                  controller: _scrollController,
                  child: SingleChildScrollView(
                    controller: _scrollController,
                    scrollDirection: Axis.horizontal,
                    child: SizedBox(
                      height: size.width > 1000 ? maxOptionHeight : constraints.maxHeight * 0.4,
                      child: Row(
                        children: [
                          size.width > 1000
                              ? SizedBox(
                                  width: constraints.maxWidth * 0.3,
                                  child: TextFormField(
                                    decoration: const InputDecoration(hintText: 'Search Items'),
                                  ),
                                )
                              : Container(),

                          if (size.width > 1000) const SizedBox(width: 10),
                          OptionWidget(
                            onPressed: () {},
                            symbol: '\$',
                            symbolColor: true,
                            width: maxOptionWidth,
                            height: maxOptionHeight,
                          ),
                          OptionWidget(
                            onPressed: () {},
                            symbol: '#',
                            symbolColor: true,
                            width: maxOptionWidth,
                            height: maxOptionHeight,
                          ),
                          ListView(
                            scrollDirection: Axis.horizontal,
                            shrinkWrap: true,
                            children: List.generate(
                              9,
                              (index) => Align(
                                child: OptionWidget(
                                  width: maxOptionWidth,
                                  height: maxOptionHeight,
                                  onPressed: () {},
                                  symbol: (index + 1).toString(),
                                  isSelected: index == 0,
                                ),
                              ),
                            ),
                          ),
                          // if (size.width > 1000) const Spacer(),
                          OptionWidget(
                            width: maxOptionWidth,
                            height: maxOptionHeight,
                            onPressed: () {},
                            icon: Icons.highlight_remove_sharp,
                            withBorder: false,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
