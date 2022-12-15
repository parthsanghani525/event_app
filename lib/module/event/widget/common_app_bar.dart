import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../common/app_color.dart';

class CommonAppBar extends StatelessWidget {
  String title;
  Widget leadingIcon;
  List<Widget> actions;

  CommonAppBar(
      {Key? key,
      required this.title,
      required this.leadingIcon,
      this.actions = const []})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      leading: leadingIcon,
      backgroundColor: AppColors.backGround,
      title: Text(title,style: const TextStyle(fontSize: 22,color: AppColors.dullBlack)),
      actions: actions,
    );
  }
}
