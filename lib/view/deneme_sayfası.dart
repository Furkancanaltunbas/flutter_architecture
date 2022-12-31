import 'package:flutter/material.dart';
import 'package:flutter_architecture/core/base/state/base_state.dart';
import 'package:flutter_architecture/core/base/view/base_widget.dart';

class deneme extends StatefulWidget {
  const deneme({super.key});

  @override
  State<deneme> createState() => _denemeState();
}

class _denemeState extends BaseState<deneme> {
  @override
  Widget build(BuildContext context) {
    return BaseView(
      onPageBuilder: (context, value) => Text("data"),
    );
  }
}
