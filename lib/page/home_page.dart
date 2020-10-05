import 'package:flutter/material.dart';
import 'package:wanandroid/page/drawer_page.dart';

///
/// 主页
///
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'WanAndroid',
        ),
      ),
      body: Center(
        child: Text(
          'Hello Flutter~',
        ),
      ),
      drawer: Drawer(
        child: DrawerPage(),
      ),
    );
  }
}
