import 'package:flutter/material.dart';
import 'package:min_it/config/theme/app_theme.dart';
import 'package:min_it/features/auth/presentation/pages/user_info.dart';

class splashScreen extends StatefulWidget {
  const splashScreen({Key? key}) : super(key: key);

  @override
  State<splashScreen> createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateToHome();
  }

  _navigateToHome() async {
    await Future.delayed(Duration(milliseconds: 1000));
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => UserInfo()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: new BoxDecoration(gradient: myGradient),
        width: 400,
        child: Center(
            child: Image.asset(
          'assets/images/Vector.png',
          width: 285,
        )),
      ),
    );
  }
}
