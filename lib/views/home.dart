import 'package:flutter/material.dart';
import 'package:jocs_app/styles/general-styles.dart';

class HomeView extends StatefulWidget {
  @override
  createState() => _HomeViewState();
}

class _HomeViewState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Text('广场中心', style: GeneralStyle.title(context)),
      ),
    );
  }
}
