import 'package:flutter/material.dart';
import 'package:test_project/common/app_color.dart';
import 'package:test_project/common/app_strings.dart';
import 'package:test_project/utils/space_divider/spaces_and_divider.dart';
import 'package:test_project/utils/widgets/app_baseLayout.dart';
import 'package:test_project/utils/widgets/button.dart';

class TextWithButtonWidget extends StatelessWidget {
  final String? mainTitleText;
  final String? titleText;

  const TextWithButtonWidget({Key? key, this.mainTitleText, this.titleText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseLayOut(
      child: Padding(
        padding: const EdgeInsets.only(left: 5),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          textWithAddButton(context,
              mainTitleText: mainTitleText, isAddButton: false),
          ListView.builder(
            itemCount: 3,
            shrinkWrap: true,
            padding: EdgeInsets.zero,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) => ListTile(
              contentPadding: const EdgeInsets.only(left: 0, bottom: 0),
              leading: Container(
                width: 45,
                height: 45,
                decoration: const BoxDecoration(
                  color: AppColors.greyColor,
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.image_outlined,
                  color: AppColors.darkGrey,
                  size: 20,
                ),
              ),
              title: Text(
                titleText!,
                style: Theme.of(context).textTheme.bodyText1!.copyWith(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: AppColors.dullBlack),
              ),
            ),
          ),
          const CommonLoginButton(
            titleText: AppStrings.viewAll,
          )
        ]),
      ),
    );
  }
}

Widget textWithAddButton(BuildContext context,
    {String? mainTitleText, bool isAddButton = false}) {
  return Row(
    children: [
      Text(
        mainTitleText!,
        style: Theme.of(context).textTheme.bodyText1!.copyWith(
            fontSize: 20,
            fontWeight: FontWeight.w700,
            color: AppColors.dullBlack),
      ),
      horizontalSpace(15),
      Container(
        height: 40,
        width: 40,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: AppColors.dullBlack)),
        child: const Center(child: Text("25")),
      ),
      const Spacer(),
      if (isAddButton)
        const CommonLoginButton(
          titleText: '+ ${AppStrings.add}',
          width: 75,
          height: 40,
        )
    ],
  );
}
