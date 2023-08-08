import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ProfileCart extends StatelessWidget {
  String image;
  String cartname;
  Function()? onPress;
  ProfileCart({
    required this.image,
    required this.cartname,
    required this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 1.h),
      child: Container(
        height: 7.h,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundColor: Color(0xff555555).withOpacity(0.05),
                  child: Image.asset(image),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 5.w),
                  child: Text(
                    cartname,
                    style: TextStyle(
                        color: Color(0xff555555),
                        fontSize: 11.sp,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ],
            ),
            IconButton(
              onPressed: onPress,
              icon: Icon(Icons.arrow_forward_ios_rounded),
              iconSize: 13.sp,
              color: Color(0xffABABAB),
            ),
          ],
        ),
      ),
    );
  }
}
