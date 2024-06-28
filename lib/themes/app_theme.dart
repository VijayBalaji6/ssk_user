import 'package:flutter/material.dart';
import 'package:ssk/constants/app_colors.dart';

class AppTheme {
  static ThemeData getAppTheme(
    BuildContext context,
  ) =>
      ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: AppColors.blackColor,
        dividerTheme: Theme.of(context).dividerTheme.copyWith(
              color: AppColors.whiteColor,
            ),
        iconTheme: Theme.of(context).iconTheme.copyWith(
              color: AppColors.whiteColor,
            ),
        textTheme: Theme.of(context)
            .textTheme
            .copyWith(
              titleSmall: Theme.of(context)
                  .textTheme
                  .titleSmall
                  ?.copyWith(fontSize: 11),
            )
            .apply(
              bodyColor: AppColors.whiteColor,
              displayColor: AppColors.greyColor,
            ),
        switchTheme: SwitchThemeData(
          thumbColor: WidgetStateProperty.all(AppColors.purpleColor),
        ),
        listTileTheme:
            const ListTileThemeData(iconColor: AppColors.purpleColor),
        appBarTheme: const AppBarTheme(
            backgroundColor: AppColors.whiteColor,
            iconTheme: IconThemeData(color: AppColors.whiteColor)),
      );
}
