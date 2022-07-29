import 'package:rentme/screens/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:rentme/rounded_button.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:rentme/colors_picker.dart';

class SplashScreen extends StatefulWidget {
  static const String id = 'splash_screen';

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigatetohome();
  }

  _navigatetohome() async {
    await Future.delayed(Duration(milliseconds: 1500));
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => WelcomeScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Rent',
            style: TextStyle(
                color: Colors.white, fontSize: 70, fontFamily: 'MusticaPro'),
          ),
          Text(
            'Me',
            style: TextStyle(
                color: Colors.black, fontSize: 70, fontFamily: 'MusticaPro'),
          ),
        ],
      ),
      backgroundColor: kblueGrey,
      nextScreen: WelcomeScreen(),
      splashTransition: SplashTransition.fadeTransition,
    );
  }
}
