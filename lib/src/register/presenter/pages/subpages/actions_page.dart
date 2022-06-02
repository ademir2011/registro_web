import 'package:flutter/material.dart';
import 'package:registro_web/src/register/presenter/pages/subpages/widgets/elevated_button_widget.dart';

class ActionsPage extends StatelessWidget {
  const ActionsPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(right: 10, bottom: 10),
      child: LayoutBuilder(
        builder: (ctx, constrains) => Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            SizedBox(
              height: constrains.maxHeight * 0.75,
              width: constrains.maxWidth * 0.15,
              child: ElevatedButtonWidget(title: 'PAY', big: true, prefixIcon: Icons.money, onPressed: () {}),
            ),
            const SizedBox(width: 5),
            SizedBox(
              height: constrains.maxHeight * 0.75,
              width: constrains.maxWidth * 0.15,
              child: ElevatedButtonWidget(title: 'Discount', big: true, onPressed: () {}),
            ),
            const Spacer(),
            SizedBox(
              height: constrains.maxHeight * 0.75,
              width: constrains.maxWidth * 0.15,
              child: ElevatedButtonWidget(title: 'Kitchen', big: true, onPressed: () {}),
            ),
            const SizedBox(width: 5),
            SizedBox(
              height: constrains.maxHeight * 0.75,
              width: constrains.maxWidth * 0.15,
              child: ElevatedButtonWidget(title: 'My Cashier', big: true, onPressed: () {}),
            ),
            const SizedBox(width: 5),
            SizedBox(
              height: constrains.maxHeight * 0.75,
              width: constrains.maxWidth * 0.15,
              child: ElevatedButtonWidget(title: 'Restart Order', big: true, onPressed: () {}),
            ),
          ],
        ),
      ),
    );
  }
}
