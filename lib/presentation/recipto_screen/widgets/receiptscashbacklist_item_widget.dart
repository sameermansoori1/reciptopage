import 'package:flutter/material.dart';
import 'package:sameer_s_application2/core/app_export.dart';
import 'package:sameer_s_application2/widgets/custom_elevated_button.dart';

// ignore: must_be_immutable
class ReceiptscashbacklistItemWidget extends StatelessWidget {
  const ReceiptscashbacklistItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 0,
      margin: EdgeInsets.all(0),
      shape: RoundedRectangleBorder(
        side: BorderSide(
          width: 1.h,
        ),
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Container(
        height: 152.v,
        width: 320.h,
        decoration: BoxDecoration(
          color: Colors.deepPurpleAccent, // Set background color to transparent
          borderRadius: BorderRadiusStyle.roundedBorder10,
        ),
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgEllipse235,
              height: 115.v,
              width: 116.h,
              alignment: Alignment.topRight,
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: SizedBox(
                height: 141.v,
                width: 304.h,
                child: Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: EdgeInsets.only(right: 115.h),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Receipts cashback".toUpperCase(),
                              style: TextStyle(
                                color: theme.colorScheme.onPrimary
                                    .withOpacity(0.7),
                                fontSize: 11.fSize,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(height: 3.v),
                            Text(
                              "Earn on any bills",
                              style: TextStyle(
                                color:
                                    theme.colorScheme.onPrimary.withOpacity(1),
                                fontSize: 20.fSize,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            SizedBox(
                              width: 188.h,
                              child: Text(
                                "Bought anything recently? Upload receipts & earn cashback.",
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  color: theme.colorScheme.onPrimary
                                      .withOpacity(0.7),
                                  fontSize: 11.fSize,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            SizedBox(height: 15.v),
                            CustomElevatedButton(
                              width: 90.h,
                              text: "Upload",
                            ),
                          ],
                        ),
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgImageRemovebgPreview,
                      height: 88.v,
                      width: 107.h,
                      alignment: Alignment.bottomRight,
                      margin: EdgeInsets.only(right: 10.h),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgEllipse241,
                      height: 54.adaptSize,
                      width: 54.adaptSize,
                      radius: BorderRadius.circular(
                        27.h,
                      ),
                      alignment: Alignment.topRight,
                      margin: EdgeInsets.only(
                        top: 37.v,
                        right: 48.h,
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgEllipse242,
                      height: 35.adaptSize,
                      width: 35.adaptSize,
                      radius: BorderRadius.circular(
                        17.h,
                      ),
                      alignment: Alignment.topRight,
                      margin: EdgeInsets.only(
                        top: 9.v,
                        right: 13.h,
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgEllipse243,
                      height: 19.adaptSize,
                      width: 19.adaptSize,
                      radius: BorderRadius.circular(
                        9.h,
                      ),
                      alignment: Alignment.topRight,
                      margin: EdgeInsets.only(top: 58.v),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgUser,
                      height: 19.adaptSize,
                      width: 19.adaptSize,
                      alignment: Alignment.topRight,
                      margin: EdgeInsets.only(right: 55.h),
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: SizedBox(
                        height: 48.adaptSize,
                        width: 48.adaptSize,
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Align(
                              alignment: Alignment.center,
                              child: Container(
                                height: 48.adaptSize,
                                width: 48.adaptSize,
                                decoration: BoxDecoration(
                                  color: appTheme.yellow400,
                                  borderRadius: BorderRadius.circular(
                                    24.h,
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: Container(
                                margin: EdgeInsets.symmetric(horizontal: 5.h),
                                padding: EdgeInsets.all(5.h),
                                decoration: AppDecoration.fillOrange.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder17,
                                ),
                                child: CustomImageView(
                                  imagePath: ImageConstant.imgStar1,
                                  height: 28.adaptSize,
                                  width: 28.adaptSize,
                                  radius: BorderRadius.circular(
                                    1.h,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
