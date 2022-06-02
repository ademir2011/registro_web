import 'package:flutter/material.dart';

class CashWidget extends StatelessWidget {
  final String title;
  final double value;
  final bool isBig;

  const CashWidget({
    Key? key,
    required this.title,
    required this.value,
    this.isBig = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: isBig ? CrossAxisAlignment.end : CrossAxisAlignment.center,
      children: [
        Text(
          title,
          style: const TextStyle(fontSize: 20),
        ),
        Text(
          '\$${value.toStringAsFixed(2)}',
          style: TextStyle(
            fontSize: isBig ? 40 : 20,
          ),
        ),
      ],
    );
  }
}
