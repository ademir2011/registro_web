import 'package:flutter/material.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (ctx, index) {
        return Container(
          width: double.infinity,
          height: 125,
          margin: const EdgeInsets.only(bottom: 5),
          color: Theme.of(context).cardColor,
          child: Row(
            children: [
              Image.network(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRZKvNP-9xWSJSpbFVgXh4IEaRvz3wMSu_UWA&usqp=CAU',
                width: 125,
                fit: BoxFit.cover,
                height: double.infinity,
              ),
              const SizedBox(width: 10),
              const Text('Comida', style: TextStyle(fontSize: 30)),
            ],
          ),
        );
      },
    );
  }
}
