import 'package:flutter/material.dart';

abstract class BaseState<T extends StatefulWidget> extends State<T> {
  ThemeData get themeData => Theme.of(context);  //tema tanımlama

  double dynamicHeight(double value) =>
      MediaQuery.of(context).size.height * value; //ekranın height ını alma
  double dynamicWidth(double value) =>
      MediaQuery.of(context).size.width * value;  //ekranın widht ını alma
}


