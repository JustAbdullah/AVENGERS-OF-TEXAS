import 'package:avengers_of_texas/core/constant/images_path.dart';
import 'package:avengers_of_texas/views/HomeScreen/home_screen.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import '../../core/constant/app_text_styles.dart';
import '../../core/constant/appcolors.dart';
import '../../customWidgets/custom_text.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.theMainColor,
      body: SafeArea(
          child: Stack(
        children: [
          Positioned(
            top: 5.h,
            left: -130.w,
            child: Lottie.asset(ImagesPath.Smoke, width: 630.w),
          ),
          Positioned(
            top: 150.h,
            left: -30.w,
            child: Lottie.asset(ImagesPath.ManTwo, width: 220.w),
          ),
          Positioned(
            top: 150.h,
            right: -30.w,
            child: Lottie.asset(ImagesPath.ManThree, width: 220.w),
          ),
          Positioned(
            top: 130.h,
            left: 50.w,
            child: Lottie.asset(ImagesPath.ManOne, width: 250.w),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 50.h),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: InkWell(
                onTap: () {
                  Get.to(HomeScreen());
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: AppColors.ColorOfMenuTop,
                      borderRadius: BorderRadius.circular(5)),
                  width: 200.w,
                  height: 40.h,
                  child: Center(
                      child: TextCustom(
                          theText: "الإنتقال الان",
                          fontSizeWidth: 20.sp,
                          fontFamily: AppTextStyles.Almarai,
                          fontColor: AppColors.whiteColor)),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 20.h),
            child: Align(
                alignment: Alignment.bottomCenter,
                child: TextCustom(
                    theText:
                        "جميع الحقوق محفوظة لدى أرابيا للالعاب والتطبيقات الترفيهية",
                    fontSizeWidth: 12.sp,
                    fontFamily: AppTextStyles.Marhey,
                    fontColor: AppColors.whiteColor)),
          )
        ],
      )),
    );
  }
}
