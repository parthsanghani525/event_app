import 'package:flutter/material.dart';
import 'package:test_project/common/app_strings.dart';

import '../event/event_detail.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: const [Icon(Icons.abc), Text(AppStrings.appbarText)],
            ),
          )
        ],
      ),
      drawer: const Drawer(),
      body: const EventDetail(),
    );
  }
}
