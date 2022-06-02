import 'package:flutter/material.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return LayoutBuilder(
      builder: (ctx, constraints) => ListView.builder(
        itemCount: 10,
        itemBuilder: (ctx, index) {
          return Container(
            width: constraints.maxWidth,
            height: constraints.maxHeight * 0.2,
            margin: const EdgeInsets.only(bottom: 5),
            color: Theme.of(context).cardColor,
            child: Row(
              children: [
                Image.network(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRZKvNP-9xWSJSpbFVgXh4IEaRvz3wMSu_UWA&usqp=CAU',
                  width: constraints.maxHeight * 0.2,
                  fit: BoxFit.cover,
                  height: double.infinity,
                ),
                const SizedBox(width: 10),
                Text('Comida'),
              ],
            ),
          );
        },
      ),
    );
  }
}
