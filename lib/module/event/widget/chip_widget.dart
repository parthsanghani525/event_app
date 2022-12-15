import 'package:flutter/material.dart';
import 'package:test_project/common/app_color.dart';

class ChipWidget extends StatelessWidget {
  String title;
  Widget icon;
  ChipWidget({Key? key, required this.title, required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Chip(
        backgroundColor: AppColors.tabSelected,
        label: Text(title),
        avatar: icon,
      ),
    );
  }
}
