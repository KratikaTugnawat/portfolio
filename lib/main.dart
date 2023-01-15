import 'package:flutter/material.dart';
import 'package:portfolioself/about.dart';
import 'package:portfolioself/home.dart';
import 'package:portfolioself/project.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(fontFamily: "Soho"),
    debugShowCheckedModeBanner: false,
    initialRoute: 'home',
    routes: {
      'home': (context) => MyHome(),
      'about': (context) => MyAbout(),
      'project': (context) => MyProjects(),
    },
  ));
}