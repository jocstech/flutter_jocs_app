import 'package:flutter/material.dart';
import 'package:jocs_app/styles/general-styles.dart';

class UndefinedView extends StatelessWidget {
  final String name;
  const UndefinedView({Key key, this.name}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Text('Route for $name is not defined',
            style: GeneralStyle.title(context)),
      ),
    );
  }
}
