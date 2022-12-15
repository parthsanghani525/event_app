import 'package:flutter/material.dart';
import 'package:test_project/common/app_color.dart';
import 'package:test_project/utils/space_divider/spaces_and_divider.dart';
import 'package:test_project/utils/widgets/app_baseLayout.dart';

class TextWithDescWidget extends StatelessWidget {
  final String? mainTitleText;
  final EdgeInsets? padding;
  final String? descriptionText;
  final bool? isContainer;

  const TextWithDescWidget(
      {Key? key,
      this.mainTitleText,
      this.padding,
      this.descriptionText,
      this.isContainer = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseLayOut(
      padding: padding,
      child: Padding(
        padding: const EdgeInsets.only(left: 5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              mainTitleText!,
              style: Theme.of(context)
                  .textTheme
                  .bodyText1!
                  .copyWith(fontSize: 20, fontWeight: FontWeight.w700),
            ),
            verticalSpace(16),
            Row(
              children: [
                Expanded(
                  child: Text(
                    descriptionText!,
                    style: const TextStyle(
                      fontSize: 17,
                      height: 1.4,
                      fontWeight: FontWeight.w400,
                      color: AppColors.lowGrey,
                    ),
                  ),
                ),
                if (isContainer!)
                  Container(
                    width: 45,
                    height: 45,
                    decoration: const BoxDecoration(
                        color: AppColors.dullBlack,
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: const Icon(Icons.watch_later_outlined,
                        color: AppColors.primaryWhite),
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
