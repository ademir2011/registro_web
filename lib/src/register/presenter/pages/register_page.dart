import 'package:flutter/material.dart';

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
      body: Row(
        children: [
          SizedBox(
            width: size.width * 0.25,
            child: Column(
              children: const [
                SideMenuCashPage(),
              ],
            ),
          ),
          SizedBox(
            width: size.width * 0.75,
            child: Column(
              children: [
                SizedBox(
                    height: size.height * (0.15 - appBarHeightPercentage),
                    child: Container(
                      color: Colors.black,
                    )),
                SizedBox(
                  height: size.height * 0.75,
                  child: Row(
                    children: [
                      SizedBox(
                        width: size.width * 0.25,
                        child: Container(color: Colors.red),
                      ),
                      SizedBox(
                        width: size.width * 0.50,
                        child: Container(color: Colors.green),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                    height: size.height * 0.10,
                    child: Container(
                      color: Colors.purple,
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class SideMenuCashPage extends StatefulWidget {
  const SideMenuCashPage({Key? key}) : super(key: key);

  @override
  State<SideMenuCashPage> createState() => _SideMenuCashPageState();
}

class _SideMenuCashPageState extends State<SideMenuCashPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final appBarHeightPercentage = ((AppBar().preferredSize.height * 100) / size.height) / 100;
    return Column(
      children: [
        SizedBox(height: size.height * (0.25 - appBarHeightPercentage), child: Container(color: Colors.red)),
        SizedBox(height: size.height * 0.10, child: Container(color: Colors.green)),
        SizedBox(height: size.height * 0.50, child: Container(color: Colors.blue)),
        SizedBox(height: size.height * 0.15, child: Container(color: Colors.yellow)),
      ],
    );
  }
}
