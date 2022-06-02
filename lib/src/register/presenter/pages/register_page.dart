import 'package:flutter/material.dart';
import 'package:registro_web/src/register/presenter/pages/register_screen_tablet.dart';
import 'package:registro_web/src/register/presenter/pages/register_screen_web.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final appBarHeightPercentage = ((AppBar().preferredSize.height * 100) / size.height) / 100;
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
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
      body: size.width > 1000
          ? RegisterScreenWeb(size: size, appBarHeightPercentage: appBarHeightPercentage)
          : RegisterScreenTablet(size: size, appBarHeightPercentage: appBarHeightPercentage),
    );
  }
}
