import 'package:flutter/material.dart';
import 'package:registro_web/src/register/presenter/pages/subpages/widgets/item_widget.dart';

class ItemPage extends StatelessWidget {
  const ItemPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (ctx, constraints) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: GridView.builder(
          controller: ScrollController(),
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: constraints.maxWidth * 0.5,
            childAspectRatio: 7.5 / 2,
            mainAxisSpacing: 5,
            crossAxisSpacing: 5,
          ),
          itemCount: 15,
          itemBuilder: (ctx, index) {
            return Container(
              width: constraints.maxWidth * 0.5,
              height: constraints.maxHeight * 0.1,
              color: Theme.of(context).colorScheme.tertiary,
              child: const ItemWidget(),
            );
          },
        ),
      ),
    );
  }
}
