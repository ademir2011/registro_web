import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [
          SizedBox(width: 15),
          Icon(Icons.arrow_back_rounded),
          Spacer(),
          Align(
            alignment: Alignment.center,
            child: Text(
              'Register',
            ),
          ),
          Spacer(),
          Icon(Icons.arrow_downward_rounded),
          SizedBox(width: 15),
          Icon(Icons.access_time_rounded),
          SizedBox(width: 15),
          Icon(Icons.lock),
          SizedBox(width: 15),
        ],
      ),
      body: Container(),
    );
  }
}
