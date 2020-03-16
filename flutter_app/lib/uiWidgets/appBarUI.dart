import 'package:flutter/material.dart';

class AppBarUI extends StatelessWidget {

  static const String _title = "Flutter Code Sample";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: AppBarStatelessWidget(),
    );
  }
}

class AppBarStatelessWidget extends StatelessWidget {

  AppBarStatelessWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        title: const Text("App Bar Demo"),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.add_alert),
            tooltip: "Show Snackbar",
            onPressed: () {scaffoldKey.currentState.showSnackBar(snackBar);},
          ),
          IconButton(
            icon: const Icon(Icons.navigate_next),
            tooltip: "Next page",
            onPressed: () {openPage(context);},
          )
        ],
      ),
      body: const Center(child: Text("This is the home page", style: TextStyle(fontSize: 24),),),
    );
  }
}

final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
final SnackBar snackBar = const SnackBar(content: Text('Showing Snackbar'));

void openPage(BuildContext context) {
  Navigator.push(context, MaterialPageRoute(
    builder: (BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Next page'),
        ),
        body: const Center(
          child: Text(
            'This is the next page',
            style: TextStyle(fontSize: 24),
          ),
        ),
      );
    },
  ));
}