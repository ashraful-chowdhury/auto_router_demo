import 'package:flutter/material.dart';

class ThirdPage extends StatelessWidget {
  final String title;

  const ThirdPage({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
    );
  }
}
