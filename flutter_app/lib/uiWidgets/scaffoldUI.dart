import 'package:flutter/material.dart';

class ScaffoldUI extends StatelessWidget {

  static const String _title = "Flutter Code Sample";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: StatefulWidgetApp(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class StatefulWidgetApp extends StatefulWidget {
  StatefulWidgetApp({Key key}): super(key: key);

  @override
  _StatefulWidgetApp createState() => _StatefulWidgetApp();
}

class _StatefulWidgetApp extends State<StatefulWidgetApp> {
  int _count = 0;

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Sample Code"),),
      body: Center(child: Text("You have pressed the button $_count times."),),
      backgroundColor: Colors.blueGrey.shade100,
      bottomNavigationBar: BottomAppBar( // **
        shape: const CircularNotchedRectangle(),
        child: Container(height: 40.0,),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => setState(() => _count++),
        tooltip: "Increment Counter",
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked, // **
    );
  }
}