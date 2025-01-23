import 'package:flutter/material.dart';
import 'package:flutter_advanced/core/theming/styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'widgets/doc_logo_and_name.dart';
import 'widgets/doctor_image_and_text.dart';
import 'widgets/get_started_button.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(bottom: 30.h,top: 30.h),
            child:  Column(
              children: [
                const DocLogoAndName(),
                SizedBox(height: 40.h,),
                const DoctorImageAndText(),
                Padding(padding: EdgeInsets.symmetric(horizontal: 30.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.',
                    style: TextStyles.font13GreyRegularWeight.copyWith(height: 1.5),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 30.h,),
                    const GetStartedButton(),
                  ],
                ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
