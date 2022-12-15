import 'package:flutter/material.dart';
import 'package:test_project/common/app_color.dart';

class BaseLayOut extends StatelessWidget {
  final Widget? child;
  final EdgeInsets? padding;

  const BaseLayOut({Key? key, this.child, this.padding}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          padding ?? const EdgeInsets.symmetric(horizontal: 15,),
      child: Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.all(10),
        decoration: const BoxDecoration(
            color: AppColors.backgroundColor,
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.all(Radius.circular(15))),
        child: child,
      ),
    );
  }
}
