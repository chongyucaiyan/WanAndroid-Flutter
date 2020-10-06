import 'package:flutter/material.dart';

///
/// 体系页
///
class SystemPage extends StatefulWidget {
  @override
  _SystemPageState createState() => _SystemPageState();
}

class _SystemPageState extends State<SystemPage>
    with AutomaticKeepAliveClientMixin {
  @override
  void initState() {
    super.initState();
    print('initState(), 体系页');
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Center(
      child: Text(
        '体系',
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
