import 'package:flutter/material.dart';

///
/// 首页
///
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with AutomaticKeepAliveClientMixin {
  @override
  void initState() {
    super.initState();
    print('initState(), 首页');
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Center(
      child: Text(
        '首页',
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
