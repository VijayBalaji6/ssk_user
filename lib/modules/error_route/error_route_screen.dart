import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ssk/constants/app_colors.dart';

MaterialPage errorRouteScreen(
    {required BuildContext context, required GoRouterState errorState}) {
  return MaterialPage(
    child: Scaffold(
        body: Center(
            child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(height: 8),
        const Text('Page Not Found!',
            style: TextStyle(
                color: AppColors.blackColor,
                fontSize: 32,
                fontWeight: FontWeight.bold)),
        const SizedBox(height: 16),
        ElevatedButton(
            onPressed: () {
              GoRouter.of(context).go('/splash');
            },
            style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.blackColor,
                padding:
                    const EdgeInsets.symmetric(horizontal: 32, vertical: 16)),
            child: const Text('Go To Home',
                style: TextStyle(
                    color: AppColors.whiteColor,
                    fontSize: 24,
                    fontWeight: FontWeight.w500))),
        Text('ErrorPage ${errorState.toString()}'),
      ],
    ))),
  );
}
