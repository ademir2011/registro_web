import 'package:flutter/material.dart';
import 'package:registro_web/src/register/presenter/pages/subpages/widgets/elevated_button_widget.dart';

class CardOrderWidget extends StatelessWidget {
  final int quantity;
  final String title;
  final double price;
  final List<String> itemsAdd;
  final List<String> itemsRemove;
  final String description;
  final void Function() forHereOnPressed;
  final void Function() modifyOnPressed;
  final bool isSelected;

  const CardOrderWidget({
    Key? key,
    required this.quantity,
    required this.title,
    required this.price,
    this.itemsAdd = const [],
    this.itemsRemove = const [],
    this.description = '',
    required this.forHereOnPressed,
    required this.modifyOnPressed,
    this.isSelected = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      padding: const EdgeInsets.all(10),
      color: isSelected ? Theme.of(context).colorScheme.onTertiary : null,
      child: ExpansionTile(
        expandedCrossAxisAlignment: CrossAxisAlignment.start,
        tilePadding: EdgeInsets.zero,
        title: Text(title),
        leading: Container(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            border: Border.all(
              color: const Color(0xffc1c1c1),
              width: 2,
            ),
          ),
          child: Text(quantity.toString()),
        ),
        trailing: Text('\$$price'),
        children: [
          const SizedBox(height: 10),
          Wrap(
            children: [
              Text(
                itemsAdd.map((item) => '$item ').toList().join(),
                style: const TextStyle(color: Color(0xff729e74)),
              ),
              const SizedBox(width: 5),
              Text(
                itemsRemove.map((item) => '$item ').toList().join(),
                style: const TextStyle(color: Color(0xffc84042)),
              ),
              const SizedBox(width: 5),
              Text(description),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              ElevatedButtonWidget(title: 'FOR HERE', secondaryColor: true, onPressed: forHereOnPressed),
              const SizedBox(width: 5),
              ElevatedButtonWidget(title: 'Modify', onPressed: modifyOnPressed),
            ],
          ),
        ],
      ),
    );
  }
}
