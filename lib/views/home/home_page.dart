import 'package:flutter/material.dart';
import 'package:music_app/views/widgets/text_normal.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextNormal(
        str: '首页',
      ),
    );
  }
}
