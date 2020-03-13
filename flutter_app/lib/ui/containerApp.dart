import 'package:flutter/material.dart';

class AppScaffold extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: <Widget>[
          ContainerApp(title: Text("Example title", style: Theme.of(context).primaryTextTheme.title,),),
          Expanded(child: Center(child: Text("Hello world"),),)
        ],
      ),
    );
  }
}

class ContainerApp extends StatelessWidget {

  final Widget title;

  ContainerApp({this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56.0,
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      decoration: BoxDecoration(color: Colors.blue[500]),
      child: Row(
        children: <Widget>[
          IconButton(icon: Icon(Icons.menu),tooltip: 'Navigation menu',onPressed: null,),
          Expanded(child: title,),
          IconButton(icon: Icon(Icons.search),tooltip: 'Search',onPressed: null,),
        ],
      ),
    );
  }
}
