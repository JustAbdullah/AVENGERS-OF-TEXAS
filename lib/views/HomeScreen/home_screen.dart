import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';

import '../../core/constant/app_text_styles.dart';
import '../../core/constant/appcolors.dart';
import '../../core/constant/images_path.dart';
import '../../customWidgets/custom_text.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  void initState() {
    super.initState();

    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.landscapeRight, DeviceOrientation.landscapeLeft]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.theMainColor,
      body: SafeArea(
          child: Stack(
        children: [
          Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 30.h),
                child: Row(
                  children: [
                    Container(
                        alignment: Alignment.center,
                        width: 60.w,
                        height: 50.h,
                        decoration: BoxDecoration(
                            color: AppColors.ColorOfMenuTop,
                            borderRadius: BorderRadius.circular(5)),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 5.w, vertical: 2.h),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "احمد",
                                style: TextStyle(
                                    fontSize: 10.sp,
                                    fontFamily: AppTextStyles.Almarai,
                                    color: AppColors.whiteColor),
                                textAlign: TextAlign.center,
                              ),
                              Image.asset(ImagesPath.PersonName)
                            ],
                          ),
                        )),
                    SizedBox(
                      width: 15.w,
                    ),
                    Container(
                        alignment: Alignment.center,
                        width: 60.w,
                        height: 50.h,
                        decoration: BoxDecoration(
                            color: AppColors.ColorOfMenuTop,
                            borderRadius: BorderRadius.circular(5)),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 5.w, vertical: 2.h),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "3",
                                style: TextStyle(
                                    fontSize: 10.sp,
                                    fontFamily: AppTextStyles.Almarai,
                                    color: AppColors.whiteColor),
                                textAlign: TextAlign.center,
                              ),
                              Image.asset(ImagesPath.HeartOP)
                            ],
                          ),
                        )),
                    SizedBox(
                      width: 15.w,
                    ),
                    Container(
                        alignment: Alignment.center,
                        width: 60.w,
                        height: 50.h,
                        decoration: BoxDecoration(
                            color: AppColors.ColorOfMenuTop,
                            borderRadius: BorderRadius.circular(5)),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 5.w, vertical: 2.h),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "3",
                                style: TextStyle(
                                    fontSize: 10.sp,
                                    fontFamily: AppTextStyles.Almarai,
                                    color: AppColors.whiteColor),
                                textAlign: TextAlign.center,
                              ),
                              Image.asset(ImagesPath.Spy)
                            ],
                          ),
                        )),
                    SizedBox(
                      width: 15.w,
                    ),
                    Container(
                        alignment: Alignment.center,
                        width: 60.w,
                        height: 50.h,
                        decoration: BoxDecoration(
                            color: AppColors.ColorOfMenuTop,
                            borderRadius: BorderRadius.circular(5)),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 5.w, vertical: 2.h),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "3470",
                                style: TextStyle(
                                    fontSize: 10.sp,
                                    fontFamily: AppTextStyles.Almarai,
                                    color: AppColors.whiteColor),
                                textAlign: TextAlign.center,
                              ),
                              Image.asset(ImagesPath.Gold)
                            ],
                          ),
                        ))
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            left: 0,
            bottom: -50.h,
            child: Lottie.asset(ImagesPath.Boss, width: 75.w),
          ),
          Positioned(
              right: 30,
              bottom: 10.h,
              child: Container(
                  width: 270.w,
                  height: 100.h,
                  child: Directionality(
                    textDirection: TextDirection.rtl,
                    child: Row(children: [
                      Container(
                        alignment: Alignment.center,
                        width: 80.w,
                        height: 70.h,
                        decoration: BoxDecoration(
                            color: AppColors.whiteColor,
                            borderRadius: BorderRadius.circular(5)),
                        child: TextCustom(
                            fontWeight: FontWeight.bold,
                            theText: "بدء المرحلة",
                            fontSizeWidth: 10.sp,
                            fontFamily: AppTextStyles.Almarai,
                            fontColor: AppColors.theMainColor),
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      Container(
                        alignment: Alignment.center,
                        width: 100.w,
                        height: 70.h,
                        decoration: BoxDecoration(
                            color: AppColors.whiteColor,
                            borderRadius: BorderRadius.circular(5)),
                        child: TextCustom(
                            fontWeight: FontWeight.bold,
                            theText: "معلومات عن الوضع",
                            fontSizeWidth: 10.sp,
                            fontFamily: AppTextStyles.Almarai,
                            fontColor: AppColors.theMainColor),
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      Container(
                        alignment: Alignment.center,
                        width: 70.w,
                        height: 70.h,
                        decoration: BoxDecoration(
                            color: AppColors.whiteColor,
                            borderRadius: BorderRadius.circular(5)),
                        child: TextCustom(
                            fontWeight: FontWeight.bold,
                            theText: "الاستخبارات",
                            fontSizeWidth: 10.sp,
                            fontFamily: AppTextStyles.Almarai,
                            fontColor: AppColors.theMainColor),
                      ),
                    ]),
                  ))),
        ],
      )),
    );
  }
}
