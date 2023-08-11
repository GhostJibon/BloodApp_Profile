import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class NotificationScreen extends StatefulWidget {
  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        color: Color(0xFFEBEBEB),
        height: double.maxFinite,
        width: double.maxFinite,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 10),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5)),
                height: 100,
                width: 330,
                child: Padding(
                  padding: EdgeInsets.all(5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 100,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CircleAvatar(
                                  backgroundColor: Color(0xffEF150D),
                                  radius: 13,
                                  child: Center(
                                    child: Text(
                                      'A+',
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  child: CircleAvatar(
                                    child: Icon(
                                      Icons.call_outlined,
                                      color: Color(0xff41A35C),
                                    ),
                                    radius: 13,
                                    backgroundColor: Color(0xffF0F0F0),
                                  ),
                                ),
                                GestureDetector(
                                  child: CircleAvatar(
                                    child: Icon(
                                      Icons.email_outlined,
                                      color: Color(0xff41A35C),
                                    ),
                                    radius: 13,
                                    backgroundColor: Color(0xffF0F0F0),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Text(
                            '+ Donate',
                            style: TextStyle(
                                color: Color(0xffEF150D),
                                fontSize: 11,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      Text(
                        'Md Hasan Masrur',
                        style: TextStyle(
                            fontSize: 13, fontWeight: FontWeight.w600),
                      ),
                      Text(
                        '20/19 Tilottoma , Tolarbag , Mirpur 1 , dhaka',
                        style:
                            TextStyle(fontSize: 11, color: Color(0xff555555)),
                        maxLines: 2,
                      ),
                      Text(
                        '1 hour ago',
                        style:
                            TextStyle(fontSize: 11, color: Color(0xff555555)),
                        maxLines: 2,
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
