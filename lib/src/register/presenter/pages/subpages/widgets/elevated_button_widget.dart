import 'package:flutter/material.dart';

class ElevatedButtonWidget extends StatelessWidget {
  final String title;
  final IconData? prefixIcon;
  final IconData? centerIcon;
  final void Function()? onPressed;
  final bool big;
  final bool secondaryColor;

  const ElevatedButtonWidget({
    Key? key,
    required this.title,
    required this.onPressed,
    this.prefixIcon,
    this.centerIcon,
    this.big = false,
    this.secondaryColor = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: secondaryColor ? const Color(0xfff99b24) : null,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        child: centerIcon != null
            ? Row(
                children: [
                  if (prefixIcon == null) Icon(centerIcon, size: 16),
                  if (prefixIcon != null) Icon(prefixIcon),
                  if (prefixIcon != null) SizedBox(width: 5),
                  if (prefixIcon != null) Text(title),
                ],
              )
            : Text(title),
      ),
      onPressed: onPressed,
    );
  }
}
