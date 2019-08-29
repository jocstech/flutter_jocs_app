import 'package:flutter/material.dart';
import 'package:jocs_app/styles/general-styles.dart';

class ProfileView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Text('个人资料', style: GeneralStyle.title(context)),
      ),
    );
  }
}
