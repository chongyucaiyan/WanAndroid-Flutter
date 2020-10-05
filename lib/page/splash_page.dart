import 'package:flutter/material.dart';

///
/// 闪屏页
///
class SplashPage extends StatelessWidget {
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
