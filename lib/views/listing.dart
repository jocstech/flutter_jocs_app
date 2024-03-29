import 'package:flutter/material.dart';
import 'package:jocs_app/services/data.dart';
import 'package:jocs_app/models/Listing.dart';

class ListingView extends StatefulWidget {
  @override
  createState() => _ListingViewState();
}

class _ListingViewState extends State {
  var listings = new List<Listing>();

  _getListings() {
    DataServices.fetchListings().then((data) {
      setState(() {
        Iterable list = data;
        listings = list.map((item) => Listing.fromJson(item)).toList();
      });
    });
  }

  @override
  void initState() {
    super.initState();
    _getListings();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Center(
            child: ListView.builder(
          itemCount: listings.length,
          itemBuilder: (context, index) {
            return ListTile(
                leading: Icon(Icons.image), title: Text(listings[index].alias));
          },
        )));
  }
}
