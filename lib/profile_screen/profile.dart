import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:profile/profile_screen/profile_item_cart.dart';
import 'package:sizer/sizer.dart';

class Profile extends StatefulWidget {
  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        color: Color(0xFFEBEBEB),
        height: double.maxFinite,
        width: double.maxFinite,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 2.h,
            ),
            Container(
              width: 90.w,
              height: 8.h,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(5)),
              child: Padding(
                padding: EdgeInsets.all(2.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          child: Image.asset('assets/images/user_image.png'),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 5.w),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Md. Hasan Masrur',
                                style: TextStyle(
                                    color: Color(0xff555555),
                                    fontSize: 11.sp,
                                    fontWeight: FontWeight.w600),
                              ),
                              SizedBox(
                                height: 0.5.w,
                              ),
                              Text(
                                '+880 123 4567 891',
                                style: TextStyle(
                                    color: Color(0xff555555),
                                    fontSize: 8.sp,
                                    fontWeight: FontWeight.w300),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 2.w),
                      child: Icon(
                        Icons.edit_outlined,
                        size: 15.sp,
                        color: Color(0xff41A35C),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 1.h,
            ),
            Container(
              width: 90.w,
              height: 35.h,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(5)),
              child: Padding(
                  padding: EdgeInsets.all(2.w),
                  child: Column(
                    children: [
                      ProfileCart(
                        image: 'assets/images/stickynote.png',
                        cartname: 'Profile Information',
                        onPress: () {
                          null;
                        },
                      ),
                      ProfileCart(
                        image: 'assets/images/stickynote.png',
                        cartname: 'Blood Request',
                        onPress: () {
                          null;
                        },
                      ),
                      ProfileCart(
                        image: 'assets/images/stickynote.png',
                        cartname: 'Terms and conditions',
                        onPress: () {
                          null;
                        },
                      ),
                      ProfileCart(
                        image: 'assets/images/stickynote.png',
                        cartname: 'About',
                        onPress: () {
                          null;
                        },
                      ),
                    ],
                  )),
            ),
            SizedBox(
              height: 1.h,
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                width: 90.w,
                height: 8.h,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5)),
                child: Padding(
                  padding: EdgeInsets.all(2.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            backgroundColor: Color(0xffFB0900),
                            child: Image.asset('assets/images/logout.png'),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 5.w),
                            child: Text(
                              'Log Out',
                              style: TextStyle(
                                  fontSize: 11.sp, fontWeight: FontWeight.w600),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
