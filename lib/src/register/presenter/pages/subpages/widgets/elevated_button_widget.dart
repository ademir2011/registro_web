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
        padding: EdgeInsets.symmetric(horizontal: big ? 40 : 15, vertical: big ? 25 : 15),
        child: centerIcon != null
            ? Icon(centerIcon, size: 29)
            : prefixIcon != null
                ? Row(
                    children: [
                      Icon(prefixIcon, size: 29),
                      const SizedBox(width: 5),
                      Text(
                        title,
                        style: TextStyle(fontSize: 25),
                      ),
                    ],
                  )
                : Text(
                    title,
                    style: TextStyle(fontSize: 25),
                  ),
      ),
      onPressed: onPressed,
    );
  }
}
