import 'package:flutter/material.dart';
import 'package:flutterapp/ui/containerApp.dart';
import 'package:flutterapp/ui/gestureApp.dart';
import 'package:flutterapp/ui/materialAppHome.dart';

void main() => runApp(
  MaterialApp(
    title: "Flutter Tutorial",
    home: GestureApp(),/*AppScaffold(), MaterialAppHome()*/
  )
);