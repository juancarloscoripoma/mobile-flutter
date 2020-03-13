import 'package:flutter/material.dart';

class MaterialAppHome extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Titulo de ejemplo"),
        leading: IconButton(icon: Icon(Icons.menu),tooltip: 'Navigation menu',onPressed: null,),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search), tooltip: "Search", onPressed: null,)
        ],
      ),
      body: Center(
        child: Text("Hello world!"),
      ),
      floatingActionButton: FloatingActionButton(tooltip: 'Add', child: Icon(Icons.add), onPressed: null,),
    );
  }
}