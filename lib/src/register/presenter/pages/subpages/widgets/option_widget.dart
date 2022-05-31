import 'package:flutter/material.dart';

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
