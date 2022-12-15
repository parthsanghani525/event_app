import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_project/common/app_color.dart';
import 'package:test_project/common/app_strings.dart';
import 'package:test_project/module/event/widget/chip_widget.dart';
import 'package:test_project/module/event/widget/common_app_bar.dart';
import 'package:test_project/module/event/widget/description_widget.dart';
import 'package:test_project/module/event/widget/tile_widget.dart';
import 'package:test_project/utils/popup_menu/event_popup.dart';
import 'package:test_project/utils/space_divider/spaces_and_divider.dart';
import 'package:test_project/utils/widgets/button.dart';

import 'bottom_containt.dart';

class EventDetail extends StatefulWidget {
  const EventDetail({Key? key}) : super(key: key);

  @override
  State<EventDetail> createState() => _EventDetailState();
}

class _EventDetailState extends State<EventDetail> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 260,
            color: AppColors.backGround,
            child: Column(
              children: [
                CommonAppBar(
                  actions: [
                    GestureDetector(
                      onTap: () {
                        eventPopMenu(context, const Offset(40, 50));
                      },
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Icon(
                          CupertinoIcons.ellipsis_circle_fill,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                    )
                  ],
                  leadingIcon: const Icon(CupertinoIcons.back),
                  title: AppStrings.eventName,
                ),
                const ToggleButton(),
                verticalSpace(10),
                const Icon(Icons.image_outlined,
                    color: AppColors.darkGrey, size: 50),
                const Spacer(),
                SizedBox(
                  height: 100,
                  child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: 3,
                      padding: EdgeInsets.zero,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return ChipWidget(
                          title: AppStrings.onSale,
                          icon: const Icon(CupertinoIcons.add, size: 17),
                        );
                      }),
                )
              ],
            ),
          ),
          verticalSpace(10),
          const TextWithListTileWidget(
            mainTitleText: AppStrings.time,
            titleText: AppStrings.dummyDate,
            subTitleText: AppStrings.dummyDate,
            itemCount: 1,
          ),
          Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.topRight,
            children: [
              const TextWithDescWidget(
                isContainer: true,
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                mainTitleText: AppStrings.location,
                descriptionText: AppStrings.locationDesc,
              ),
              Positioned(
                  bottom: 90,
                  child: Container(
                    width: 50,
                    height: 60,
                    padding: const EdgeInsets.only(left: 10),
                    decoration: const BoxDecoration(
                        color: AppColors.dullGrey,
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(40),
                            bottomLeft: Radius.circular(40))),
                    child: const Icon(Icons.edit, color: AppColors.dullBlack),
                  ))
            ],
          ),
          const BottomContaint(),
        ],
      ),
    );
  }
}
