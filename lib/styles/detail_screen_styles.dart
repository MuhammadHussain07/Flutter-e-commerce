import 'package:e_commere/appColors/app_colors.dart';
import 'package:flutter/material.dart';

class DetailScreenStyles {
  static const TextStyle companyTitleStyle = TextStyle(
      color: AppColors.baseBlackColor,
      fontSize: 18,
      fontWeight: FontWeight.w600);

  static const TextStyle productModelStyle = TextStyle(
    color: AppColors.baseDarkPinkColor,
  );

  static const TextStyle productPriceStyle = TextStyle(
      color: AppColors.baseBlackColor,
      fontSize: 18,
      fontWeight: FontWeight.w600);

  static const TextStyle productOldPriceStyle = TextStyle(
      color: AppColors.baseGrey60Color,
      decoration: TextDecoration.lineThrough,
      // fontSize: 11,
      fontWeight: FontWeight.w600);

  static const TextStyle productDropDownValueStyle = TextStyle(
    color: AppColors.baseBlackColor,
    fontSize: 12,
  );

  static const TextStyle buttonTextStyle = TextStyle(
    color: AppColors.baseWhiteColor,
    fontSize: 20,
  );

  static const TextStyle discriptionTextStyle = TextStyle(
    fontSize: 18.0,
    fontWeight: FontWeight.w500,
    color: AppColors.baseBlackColor,
  );

  static const TextStyle sizeGuideTextStyle = TextStyle(
    fontSize: 18.0,
    fontWeight: FontWeight.w500,
    color: AppColors.baseBlackColor,
  );
  static const TextStyle youMayAlsoLikeTextStyle = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.bold,
    color: AppColors.baseBlackColor,
  );

  static const TextStyle showAllTextStyle = TextStyle(
    fontSize: 18,
    color: AppColors.baseDarkPinkColor,
  );
}
