import 'package:flutter/material.dart';

///
/// 项目页
///
class ProjectPage extends StatefulWidget {
  @override
  _ProjectPageState createState() => _ProjectPageState();
}

class _ProjectPageState extends State<ProjectPage>
    with AutomaticKeepAliveClientMixin {
  @override
  void initState() {
    super.initState();
    print('initState(), 项目页');
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Center(
      child: Text(
        '项目',
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
