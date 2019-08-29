import 'package:flutter/material.dart';
// views

import 'package:jocs_app/views/home.dart';
import 'package:jocs_app/views/listing.dart';
import 'package:jocs_app/views/profile.dart';
import 'package:jocs_app/views/undefined.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  // Here we'll handle all the routing
  switch (settings.name) {
    case '/':
      return MaterialPageRoute(builder: (context) => HomeView());
      break;
    case 'home':
      return MaterialPageRoute(builder: (context) => HomeView());
      break;
    case 'listing':
      return MaterialPageRoute(builder: (context) => ListingView());
      break;
    case 'profile':
      return MaterialPageRoute(builder: (context) => ProfileView());
      break;
    case 'undefined':
      return MaterialPageRoute(builder: (context) => UndefinedView());
      break;
    default:
      return MaterialPageRoute(
          builder: (context) => UndefinedView(
                name: settings.name,
              ));
  }
}
