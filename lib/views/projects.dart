import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:jocs_app/services/data.dart';
import 'package:jocs_app/models/Project.dart';

class ProjectsView extends StatefulWidget {
  @override
  createState() => _ProjectsViewState();
}

class _ProjectsViewState extends State {
  var projects = new List<Project>();

  _getListings() {
    DataServices.fetchProjects().then((data) {
      setState(() {
        Iterable list = data;
        projects = list.map((item) => Project.fromJson(item)).toList();
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
          itemCount: projects.length,
          itemBuilder: (context, index) {
            return ListTile(
                leading: Image.network(projects[index].url,
                    fit: BoxFit.cover,
                    width: 90,
                    height: 60,
                    alignment: Alignment.center),
                title: Text(projects[index].title),
                subtitle: Text(excerpt(projects[index].description),
                    style: TextStyle(fontSize: 10)),
                isThreeLine: true);
          },
        )));
  }

  String excerpt(String desc) {
    const EXCERPT_LENGTH = 50;
    return desc.length > EXCERPT_LENGTH
        ? desc.substring(0, EXCERPT_LENGTH)
        : desc;
  }
}
