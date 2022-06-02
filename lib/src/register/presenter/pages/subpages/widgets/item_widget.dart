import 'package:flutter/material.dart';

class ItemWidget extends StatelessWidget {
  const ItemWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (ctx, constraints) => Stack(
        alignment: Alignment.center,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 100),
            child: FittedBox(
              child: Text('Bacon ,quejo e Ovo, Alface, tomate'),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              height: constraints.maxHeight * 0.2,
              width: constraints.maxWidth * 0.15,
              margin: const EdgeInsets.all(5),
              color: Theme.of(context).cardColor,
              child: const Center(
                child: Text(
                  '3.69',
                  style: TextStyle(color: Colors.green),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
