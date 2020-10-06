import 'package:flutter/material.dart';
import 'package:wanandroid/common/constants.dart';

///
/// 闪屏页
///
class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: Constants.SPLASH_TIME))
        .then((value) => Navigator.pushNamed(context, Pages.MAIN_PAGE));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'images/ic_launcher.png',
              width: 64,
              height: 64,
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              'WanAndroid',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
