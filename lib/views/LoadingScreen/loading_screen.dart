import 'package:avengers_of_texas/core/constant/images_path.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import '../../controllers/controller_app.dart';
import '../../core/constant/app_text_styles.dart';
import '../../core/constant/appcolors.dart';
import '../../customWidgets/custom_padding.dart';
import '../../customWidgets/custom_text.dart';

class LoadingScreen extends StatelessWidget {
  const LoadingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ControllerApp controllerApp = Get.put(ControllerApp());
    return Scaffold(
      backgroundColor: AppColors.theMainColor,
      body: SafeArea(
          child: Center(
        child: SingleChildScrollView(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 300.h,
                ),
                Lottie.asset(ImagesPath.LoadinganI, width: 200.w),
                SizedBox(
                  height: 40.h,
                ),
                PaddingCustom(
                    theTop: 0,
                    child: TextCustom(
                        theText: "انتظر قليلاً..",
                        fontSizeWidth: 20.sp,
                        fontFamily: AppTextStyles.Almarai,
                        fontColor: AppColors.whiteColor)),
              ]),
        ),
      )),
    );
  }
}
