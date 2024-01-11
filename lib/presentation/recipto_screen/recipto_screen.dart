import '../recipto_screen/widgets/receiptscashbacklist_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:sameer_s_application2/core/app_export.dart';
import 'package:sameer_s_application2/widgets/custom_elevated_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ReciptoScreen extends StatelessWidget {
  const ReciptoScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        body: Container(
          width: SizeUtils.width,
          height: SizeUtils.height,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(0.51, -0.13),
              end: Alignment(0.51, 1.12),
              colors: [
                theme.colorScheme.onPrimaryContainer,
                theme.colorScheme.primary,
                appTheme.blue400,
              ],
            ),
          ),
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(vertical: 16.v),
            child: Column(
              children: [
                _buildFrameRow(context),
                SizedBox(height: 38.v),
                _buildReceiptsCashbackList(context),
                SizedBox(height: 61.v),
                _buildReciptoColumn(context),
                SizedBox(height: 5.v),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Section Widget
  Widget _buildFrameRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 16.h,
        right: 8.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 20.v,
              bottom: 17.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Hey there,",
                  style: TextStyle(
                    color: theme.colorScheme.onPrimary.withOpacity(0.7),
                    fontSize: 14.fSize,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                  ),
                ),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Welcome to ",
                        style: CustomTextStyles.titleMediumb2ffffff,
                      ),
                      TextSpan(
                        text: "Recipto !!!",
                        style: theme.textTheme.titleMedium,
                      ),
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 83.v,
            width: 88.h,
            child: Stack(
              alignment: Alignment.topLeft,
              children: [
                Align(
                  alignment: Alignment.bottomRight,
                  child: Container(
                    height: 28.v,
                    width: 48.h,
                    decoration: BoxDecoration(
                      color: appTheme.purple5019,
                      borderRadius: BorderRadius.circular(
                        24.h,
                      ),
                    ),
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgRectangle930,
                  height: 70.v,
                  width: 80.h,
                  alignment: Alignment.topLeft,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // Section Widget
  Widget _buildReceiptsCashbackList(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20.h),
      decoration: AppDecoration.outlineBlack,
      child: ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (
          context,
          index,
        ) {
          return SizedBox(
            height: 20.v,
          );
        },
        itemCount: 2,
        itemBuilder: (context, index) {
          return ReceiptscashbacklistItemWidget();
        },
      ),
    );
  }

  // Section Widget
  Widget _buildReciptoColumn(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.h),
      decoration: AppDecoration.fillOnPrimary.copyWith(
        borderRadius: BorderRadiusStyle.customBorderTL16,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 4.v),
          Padding(
            padding: EdgeInsets.only(
              left: 7.h,
              right: 4.h,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgImage262,
                  height: 61.v,
                  width: 58.h,
                  margin: EdgeInsets.only(bottom: 2.v),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 11.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Deals on fav Brands",
                        style: TextStyle(
                          color: appTheme.black900.withOpacity(0.8),
                          fontSize: 14.fSize,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(height: 5.v),
                      SizedBox(
                        width: 171.h,
                        child: Text(
                          "Earn on your favorite brands from nearby stores",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: appTheme.black900.withOpacity(0.4),
                            fontSize: 12.fSize,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Spacer(),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 13.v),
                  child: Column(
                    children: [
                      Container(
                        width: 36.h,
                        padding: EdgeInsets.symmetric(
                          horizontal: 9.h,
                          vertical: 1.v,
                        ),
                        decoration: AppDecoration.fillBlack.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder10,
                        ),
                        child: Text(
                          "1/4",
                          style: TextStyle(
                            color: theme.colorScheme.onPrimary.withOpacity(1),
                            fontSize: 11.fSize,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      SizedBox(height: 8.v),
                      SizedBox(
                        height: 8.v,
                        child: AnimatedSmoothIndicator(
                          activeIndex: 0,
                          count: 4,
                          effect: ScrollingDotsEffect(
                            spacing: 4,
                            activeDotColor: appTheme.black900.withOpacity(0.8),
                            dotColor: appTheme.black900.withOpacity(0.4),
                            dotHeight: 8.v,
                            dotWidth: 8.h,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 22.v),
          CustomElevatedButton(
            height: 41.v,
            text: "Continue to app",buttonTextStyle:TextStyle(color: Colors.white) ,
            buttonStyle: CustomButtonStyles.fillPrimary,
          ),
        ],
      ),
    );
  }
}
