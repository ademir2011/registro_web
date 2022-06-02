import 'package:flutter/material.dart';

class OptionWidget extends StatelessWidget {
  final String? symbol;
  final bool symbolColor;
  final bool isSelected;
  final IconData? icon;
  final bool withBorder;
  final void Function()? onPressed;
  final double width;
  final double height;

  const OptionWidget({
    Key? key,
    this.symbol,
    this.symbolColor = false,
    this.isSelected = false,
    this.withBorder = true,
    this.icon,
    required this.onPressed,
    this.width = 50,
    this.height = 50,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      margin: const EdgeInsets.all(2.5),
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
      child: InkWell(
        onTap: onPressed,
        child: Center(
          child: icon != null
              ? FittedBox(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Icon(icon),
                  ),
                )
              : FittedBox(
                  child: Text(
                    symbol != null ? symbol! : '',
                    style: const TextStyle(fontSize: 25),
                  ),
                ),
        ),
      ),
    );
  }
}
