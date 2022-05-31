import 'package:flutter/material.dart';

class BannerWidget extends StatelessWidget {
  const BannerWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.network(
            'https://d1csarkz8obe9u.cloudfront.net/posterpreviews/food-label-design-template-ca071e01e7974c191d889d84936379f6_screen.jpg?ts=1598488130',
            height: 65,
            width: 65,
          ),
          const SizedBox(height: 25),
          const Text('Framingham'),
        ],
      ),
    );
  }
}
