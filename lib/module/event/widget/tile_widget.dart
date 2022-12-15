import 'package:flutter/material.dart';
import 'package:test_project/common/app_color.dart';
import 'package:test_project/common/app_image.dart';
import 'package:test_project/utils/space_divider/spaces_and_divider.dart';
import 'package:test_project/utils/widgets/app_baseLayout.dart';

class TextWithListTileWidget extends StatelessWidget {
  final String? titleText;
  final String? mainTitleText;
  final String? subTitleText;
  final bool? isUpload;
  final TextStyle? textStyle;
  final int? itemCount;
  final int? item;

  const TextWithListTileWidget(
      {Key? key,
      this.titleText,
      this.mainTitleText,
      this.subTitleText,
      this.isUpload = false,
      this.textStyle,
      this.itemCount,
      this.item})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseLayOut(
      child: Padding(
        padding: const EdgeInsets.only(left: 5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              mainTitleText!,
              style: Theme.of(context).textTheme.bodyText1!.copyWith(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: AppColors.dullBlack),
            ),
            if (isUpload!) verticalSpace(10),
            isUpload == true
                ? ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: item,
                    padding: EdgeInsets.zero,
                    itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Row(
                        children: [
                          Container(
                            width: 50,
                            height: 50,
                            decoration: const BoxDecoration(
                                color: AppColors.greyColor,
                                shape: BoxShape.rectangle,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(12))),
                            child: const Icon(Icons.image_outlined,
                                color: AppColors.darkGrey),
                          ),
                          horizontalSpace(10),
                          Text(
                            titleText!,
                            style: Theme.of(context)
                                .textTheme
                                .bodyText1!
                                .copyWith(
                                    fontSize: 16,
                                    decoration: item == 1
                                        ? TextDecoration.underline
                                        : TextDecoration.none,
                                    fontWeight: FontWeight.w400,
                                    color:
                                        AppColors.dullBlack.withOpacity(0.8)),
                          ),
                          Image.network(
                            AppImagePath.linkImage,
                            height: 15,
                            width: 15,
                            color: AppColors.dullBlack.withOpacity(0.8),
                          )
                        ],
                      ),
                    ),
                  )
                : ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: itemCount,
                    padding: EdgeInsets.zero,
                    itemBuilder: (context, index) => ListTile(
                      contentPadding: const EdgeInsets.only(left: 0, bottom: 0),
                      leading: Container(
                        width: 50,
                        height: 50,
                        decoration: const BoxDecoration(
                            color: AppColors.greyColor,
                            shape: BoxShape.rectangle,
                            borderRadius:
                                BorderRadius.all(Radius.circular(15))),
                        child: const Icon(Icons.watch_later_outlined,
                            color: AppColors.primaryBlack),
                      ),
                      title: Text(
                        titleText!,
                        style: textStyle ??
                            Theme.of(context).textTheme.bodyText1!.copyWith(
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                                color: AppColors.dullBlack),
                      ),
                      subtitle: Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: Text(
                          subTitleText!,
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1!
                              .copyWith(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                  color: AppColors.dullBlack),
                        ),
                      ),
                    ),
                  )
          ],
        ),
      ),
    );
  }
}
