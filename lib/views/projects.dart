import 'package:flutter/material.dart';
import 'package:jocs_app/styles/general-styles.dart';

class ProjectsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: Text('工程项目', style: GeneralStyle.title(context)),
        ));
  }
}
