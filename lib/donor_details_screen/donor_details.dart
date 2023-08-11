import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class DonorDetails extends StatefulWidget {
  @override
  State<DonorDetails> createState() => _DonorDetailsState();
}

class _DonorDetailsState extends State<DonorDetails> {
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
            SizedBox(
              height: 20,
            ),
            Container(
              width: 320,
              height: 400,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(5)),
              child: Padding(
                padding: EdgeInsets.all(2),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.location_on_outlined,
                              color: Color(0xffEF150D),
                            ),
                            Text(
                              'Donor Location',
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 25, right: 25),
                          child: Expanded(
                              child: Text(
                            '20/19 Tilottoma , Tolarbag , Mirpur 1 , dhaka',
                            style: TextStyle(
                                fontSize: 11, color: Color(0xff555555)),
                            maxLines: 2,
                          )),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 320,
                      width: 300,
                      decoration: BoxDecoration(
                          color: Colors.pink,
                          borderRadius: BorderRadius.circular(5)),
                      child: Center(child: Text('Map')),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
                width: 320,
                height: 250,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5)),
                child: Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 10, bottom: 10),
                        child: CircleAvatar(
                          backgroundColor: Color(0xffEF150D),
                          radius: 18,
                          child: Center(
                            child: Text(
                              'A+',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Md Hasan Masrur',
                            style: TextStyle(
                                fontSize: 13, fontWeight: FontWeight.w600),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 10),
                            child: Text(
                              'Avtive User',
                              style: TextStyle(
                                  color: Color(0xff41A35C),
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                        ],
                      ),
                      DetailsItem(
                        itemicon: Icons.email_outlined,
                        value: 'example@gmail.com',
                        valueColor: Color(0xff41A35C),
                      ),
                      DetailsItem(
                        itemicon: Icons.call_outlined,
                        value: '+8801345643454',
                        valueColor: Color(0xff41A35C),
                      ),
                      DetailsItem(
                        itemicon: Icons.person_outlined,
                        value: 'Male',
                        valueColor: Colors.black,
                      ),
                      DetailsItem(
                        itemicon: Icons.access_time,
                        value: 'Last donation: ' + '12/11/2013',
                        valueColor: Colors.black,
                      ),
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}

class DetailsItem extends StatelessWidget {
  String value;
  IconData itemicon;
  Color valueColor;
  DetailsItem(
      {required this.itemicon, required this.value, required this.valueColor});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Row(
        children: [
          Icon(
            itemicon,
            size: 16,
          ),
          Padding(
            padding: EdgeInsets.only(left: 10),
            child: Text(
              value,
              style: TextStyle(
                  color: valueColor, fontSize: 11, fontWeight: FontWeight.w400),
            ),
          ),
        ],
      ),
    );
  }
}
