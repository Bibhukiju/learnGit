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
    LTiles(title: "Update and Publish"),
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
        centerTitle: true,
        backgroundColor: Colors.black12,
      ),
      body: ListView.builder(
        itemCount: lCards.length,
        itemBuilder: (BuildContext context, int index) => Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      offset: Offset(-5, -5),
                      blurRadius: 2,
                      color: Colors.grey[800]),
                  BoxShadow(
                      offset: Offset(5, 5),
                      blurRadius: 2,
                      color: Colors.grey.shade700)
                ],
                borderRadius: BorderRadius.circular(20),
                color: Colors.black54,
              ),
              child: Hero(
                tag: "${lCards.elementAt(index).title}",
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext context) => Details(
                              index: index,
                              title: lCards.elementAt(index).title,
                            )));
                  },
                  child: Container(
                    child: buildTiles(title: lCards.elementAt(index).title),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  buildTiles({title, params}) => Text(title);
}
