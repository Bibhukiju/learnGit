import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final List titles = [
    "introduction to git",
    "Create",
    "Local Changes",
    " commit History",
    "Branches and tags",
    "Update and publish",
    "Merge and Rebase",
    "Undo",
    "Stash",
    "Workflow",
    "Git commit messages"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.light,
        elevation: 0,
        title: Text("Easy git"),
        leading: Icon(Icons.code),
      ),
      body: Container(
        margin: EdgeInsets.only(top:10),
        child: ListView.builder(
          itemCount: titles.length,
          itemBuilder: (BuildContext context, int index) => Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Card(
              shape:
                  RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              child: ListTile(
                title: buildTiles(title: titles.elementAt(index)),
              ),
            ),
          ),
        ),
      ),
    );
  }

  buildTiles({title, params}) => Text(title);
}
