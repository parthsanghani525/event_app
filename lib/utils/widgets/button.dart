import 'package:flutter/material.dart';
import 'package:flutter_toggle_tab/flutter_toggle_tab.dart';
import 'package:test_project/common/app_color.dart';
import 'package:test_project/common/app_strings.dart';

class CommonLoginButton extends StatelessWidget {
  final String? titleText;
  final double? width;
  final double? height;

  const CommonLoginButton({Key? key, this.titleText, this.width, this.height})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
      width: width ?? MediaQuery.of(context).size.width,
      height: height ?? 50,
      alignment: Alignment.topRight,
      decoration: BoxDecoration(
          color: AppColors.dullBlack, borderRadius: BorderRadius.circular(10)),
      child: Center(
        child: Text(
          titleText!,
          style: Theme.of(context).textTheme.bodyText1!.copyWith(
              fontSize: 18, fontWeight: FontWeight.w400, color: AppColors.primaryWhite),
        ),
      ),
    );
  }
}

class ToggleButton extends StatelessWidget {
  const ToggleButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: FlutterToggleTab(
        isShadowEnable: false,
        height: 40,
        width: 92,
        borderRadius: 8,
        selectedIndex: 0,
        selectedTextStyle: Theme.of(context)
            .textTheme
            .bodyLarge!
            .copyWith(color: AppColors.dullBlack),
        unSelectedTextStyle: Theme.of(context)
            .textTheme
            .bodyLarge!
            .copyWith(color: AppColors.primaryWhite),
        labels: const [
          AppStrings.eventInfo,
          AppStrings.analytic,
          AppStrings.attendees
        ],
        selectedLabelIndex: (labelIndex) {
          0;
        },
        marginSelected: const EdgeInsets.all(6),
        selectedBackgroundColors: const [AppColors.tabSelected],
        unSelectedBackgroundColors: const [AppColors.tabUnselected],
      ),
    );
  }
}
