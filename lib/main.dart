import 'package:flutter/material.dart';
import 'package:profile/donor_details_screen/donor_details.dart';
import 'package:profile/notification_screen/notification_screen.dart';
import 'package:profile/profile_screen/profile.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: DonorDetails(),
      );
    });
  }
}
