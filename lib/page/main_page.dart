import 'package:flutter/material.dart';
import 'package:wanandroid/page/drawer_page.dart';
import 'package:wanandroid/page/home_page.dart';
import 'package:wanandroid/page/navigation_page.dart';
import 'package:wanandroid/page/project_page.dart';
import 'package:wanandroid/page/public_page.dart';
import 'package:wanandroid/page/system_page.dart';

///
/// 主页
///
class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;

  final PageController _pageController = PageController();

  final List<Widget> _pageList = [
    HomePage(),
    SystemPage(),
    PublicPage(),
    NavigationPage(),
    ProjectPage(),
  ];

  final List<String> _titleList = [
    'WanAndroid',
    '体系',
    '公众号',
    '导航',
    '项目',
  ];

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_titleList[_currentIndex]),
      ),
      body: PageView.builder(
        controller: _pageController,
        itemBuilder: (context, index) => _pageList[index],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '首页',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.apps),
            label: '体系',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people_outline),
            label: '公众号',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.navigation),
            label: '导航',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.folder_open),
            label: '项目',
          ),
        ],
        selectedItemColor: Theme.of(context).primaryColor,
        unselectedItemColor: Theme.of(context).primaryColorLight,
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: (index) {
          _pageController.jumpToPage(index);
          setState(() => _currentIndex = index);
        },
      ),
      drawer: Drawer(
        child: DrawerPage(),
      ),
    );
  }
}
