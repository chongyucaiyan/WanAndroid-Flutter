import 'package:flutter/material.dart';

///
/// 公众号页
///
class PublicPage extends StatefulWidget {
  @override
  _PublicPageState createState() => _PublicPageState();
}

class _PublicPageState extends State<PublicPage>
    with AutomaticKeepAliveClientMixin {
  @override
  void initState() {
    super.initState();
    print('initState(), 公众号页');
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Center(
      child: Text(
        '公众号',
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
