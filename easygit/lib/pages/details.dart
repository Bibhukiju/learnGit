import 'package:flutter/material.dart';
import 'package:easygit/constants/constants.dart' as Cons;

class Details extends StatefulWidget {
  final String title;
  final int index;
  Details({this.index, this.title});
  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    List a = Cons.listPages.elementAt(widget.index);
    return Scaffold(
      backgroundColor: Colors.grey[800],
      appBar: AppBar(
        title: Text(widget.title),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(14.0),
        child: ListView.builder(
          itemCount: a.length,
          itemBuilder: (BuildContext context, int index) => Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(3, 3),
                        blurRadius: 1,
                        // spreadRadius: 1,
                        color: Colors.grey[800]),
                    BoxShadow(
                        offset: Offset(-3, -3),
                        blurRadius: 1,
                        // spreadRadius: 1,
                        color: Colors.grey.shade700)
                  ],
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.black54,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Text(
                      a.elementAt(index).command,
                      style: TextStyle(fontSize: 20),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text.rich(
                      TextSpan(text: a.elementAt(index).desc),
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
