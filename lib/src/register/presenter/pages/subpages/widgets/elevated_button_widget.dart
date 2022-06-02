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
      child: centerIcon != null
          ? FittedBox(child: Icon(centerIcon))
          : prefixIcon != null
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FittedBox(child: Icon(prefixIcon)),
                    const SizedBox(width: 5),
                    FittedBox(child: Text(title)),
                  ],
                )
              : FittedBox(child: Text(title)),
      onPressed: onPressed,
    );
  }
}
