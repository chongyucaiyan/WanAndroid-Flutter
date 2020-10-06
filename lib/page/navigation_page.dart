import 'package:flutter/material.dart';

///
/// 导航页
///
class NavigationPage extends StatefulWidget {
  @override
  _NavigationPageState createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage>
    with AutomaticKeepAliveClientMixin {
  @override
  void initState() {
    super.initState();
    print('initState(), 导航页');
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Center(
      child: Text(
        '导航',
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
