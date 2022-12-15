import 'package:flutter/material.dart';
import 'package:test_project/common/app_image.dart';
import 'package:test_project/common/app_strings.dart';
import 'package:test_project/module/event/widget/common_event.dart';
import 'package:test_project/module/event/widget/description_widget.dart';
import 'package:test_project/module/event/widget/ticket_widget.dart';
import 'package:test_project/module/event/widget/tile_widget.dart';

import '../../common/app_color.dart';
import '../../utils/widgets/button.dart';

class BottomContaint extends StatelessWidget {
  const BottomContaint({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const TextWithButtonWidget(
          mainTitleText: AppStrings.speaker,
          titleText: AppStrings.speakerName,
        ),
        const TextWithButtonWidget(
          mainTitleText: AppStrings.organizer,
          titleText: AppStrings.organizerName,
        ),
        const TextWithDescWidget(
          isContainer: false,
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
          mainTitleText: AppStrings.description,
          descriptionText: AppStrings.descDetail,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
          child: textWithAddButton(context,
              isAddButton: true, mainTitleText: AppStrings.tickets),
        ),
        const TicketWidget(titleText: AppStrings.ticketsName),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 7),
          child: CommonLoginButton(
            titleText: AppStrings.viewAll,
          ),
        ),
        const TextWithListTileWidget(
          titleText: AppStrings.solana,
          mainTitleText: AppStrings.url,
          subTitleText: '',
          isUpload: true,
          item: 1,
        ),
        TextWithListTileWidget(
          titleText: AppStrings.instagram,
          mainTitleText: AppStrings.social,
          subTitleText: AppStrings.event,
          itemCount: 4,
          textStyle: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w400,
              color: AppColors.dullBlack),
          isUpload: false,
        ),
        const TextWithListTileWidget(
          titleText: AppStrings.uber,
          mainTitleText: AppStrings.partners,
          subTitleText: '',
          isUpload: true,
          item: 3,
        ),
      ],
    );
  }
}
