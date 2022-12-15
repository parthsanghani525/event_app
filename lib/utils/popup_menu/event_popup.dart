import 'package:flutter/material.dart';
import 'package:test_project/common/app_color.dart';
import 'package:test_project/utils/space_divider/spaces_and_divider.dart';

void eventPopMenu(BuildContext context, Offset offset, {onTapLogOut}) async {
  double left = offset.dx + 10;
  double top = offset.dy + 45;
  await showMenu(
    color: const Color(0xfff5f7fa),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(15.0),
      ),
    ),
    context: context,
    position: RelativeRect.fromLTRB(left, top, 20, 0),
    items: [
      PopupMenuItem(child: popUpMenuItem(text: 'Edit', icon: Icons.edit)),
      PopupMenuItem(
          child: popUpMenuItem(text: 'Preview', icon: Icons.present_to_all)),
      PopupMenuItem(child: popUpMenuItem(text: 'Mailing', icon: Icons.mail)),
      PopupMenuItem(
          child:
              popUpMenuItem(text: 'Embed code', icon: Icons.add_chart_sharp)),
      PopupMenuItem(child: popUpMenuItem(text: 'Copy URL', icon: Icons.copy)),
      PopupMenuItem(child: popUpMenuItem(text: 'Delete', icon: Icons.delete)),
    ],
    elevation: 2.0,
  );
}

Widget popUpMenuItem({icon, String? text}) {
  return Row(
    children: [
      Icon(icon, size: 19, color: AppColors.mediumGrey),
      horizontalSpace(15),
      Text(
        text!,
        style: const TextStyle(fontSize: 15, color: AppColors.mediumGrey),
      )
    ],
  );
}
