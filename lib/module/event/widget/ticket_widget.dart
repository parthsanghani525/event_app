import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_project/common/app_color.dart';
import 'package:test_project/common/app_image.dart';
import 'package:test_project/common/app_strings.dart';
import 'package:test_project/utils/space_divider/spaces_and_divider.dart';

class TicketWidget extends StatelessWidget {
  final String? titleText;

  const TicketWidget({Key? key, this.titleText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 3,
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      itemBuilder: (context, index) => Padding(
        padding:
            const EdgeInsets.only(left: 25, right: 25, top: 10, bottom: 10),
        child: Column(children: [
          Container(
            padding: const EdgeInsets.only(top: 10, right: 10),
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
                color: AppColors.greyColor,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10))),
            child: Column(
              children: [
                const Align(
                  alignment: Alignment.topRight,
                  child: Icon(
                    CupertinoIcons.ellipsis_circle_fill,
                    color: Colors.white70,
                    size: 35,
                  ),
                ),
                const Icon(
                  Icons.image_outlined,
                  color: AppColors.darkGrey,
                  size: 60,
                ),
                verticalSpace(40),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 15),
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
                color: AppColors.backgroundColor,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10))),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      titleText!,
                      style: Theme.of(context).textTheme.headline6!.copyWith(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          color: AppColors.dullBlack),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 7, vertical: 5),
                      decoration: BoxDecoration(
                          color: AppColors.greyColor,
                          borderRadius: BorderRadius.circular(12)),
                      child: Text(AppStrings.ticket,
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium!
                              .copyWith(
                                  fontSize: 12, color: AppColors.dullBlack)),
                    )
                  ],
                ),
                const Text(AppStrings.associated,
                    style: TextStyle(
                        fontSize: 14,
                        color: AppColors.lightGrey,
                        fontWeight: FontWeight.w400)),
                verticalSpace(5),
                Row(
                  children: [
                    Image.network(AppImagePath.coinImage,
                        width: 13, height: 13),
                    horizontalSpace(5),
                    const Text(AppStrings.Usdc,
                        style: TextStyle(
                            fontSize: 14,
                            color: AppColors.dullBlack,
                            letterSpacing: 0.37,
                            fontWeight: FontWeight.w400)),
                  ],
                ),
                verticalSpace(10),
                const Text(AppStrings.ticketDesc,
                    style: TextStyle(
                        fontSize: 14,
                        color: AppColors.dullBlack,
                        letterSpacing: 0.37,
                        fontWeight: FontWeight.w300)),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
