import 'package:flutter/material.dart';

///
/// 侧边栏
///
class DrawerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        DrawerHeader(
          decoration: BoxDecoration(
            color: Theme.of(context).primaryColor,
          ),
          child: Center(
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
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
        ),
        ListTile(
          leading: Icon(
            Icons.info,
            color: Theme.of(context).primaryColor,
          ),
          title: Text(
            '关于',
            style: TextStyle(
              color: Theme.of(context).primaryColor,
            ),
          ),
        ),
      ],
    );
  }
}
