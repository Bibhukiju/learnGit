import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import '../models/tileModel.dart';
import '../pages/details.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<LTiles> lCards = [
    LTiles(title: "Introduction to git", params: "Intro"),
    LTiles(title: "Create", params: "create"),
    LTiles(title: "Local Changes", params: "LoChanges"),
    LTiles(title: "Commit History", params: "CHistory"),
    LTiles(title: "Branches and tags", params: "BandT"),
    LTiles(title: "Merge and Rebase", params: "MandR"),
    LTiles(title: "Undo", params: "undo"),
    LTiles(title: "Stash", params: "stash"),
    LTiles(title: "WorkFlow", params: "Workflow"),
    LTiles(title: "Git Commit message", params: "GCM")
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
        margin: EdgeInsets.only(top: 10),
        child: ListView.builder(
          itemCount: lCards.length,
          itemBuilder: (BuildContext context, int index) => Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: Hero(
                tag: "${lCards.elementAt(index).title}",
                child: ListTile(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext context) => Details(
                              index: index,
                              title: lCards.elementAt(index).title,
                            )));
                  },
                  title: buildTiles(title: lCards.elementAt(index).title),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  buildTiles({title, params}) => Text(title);
}
