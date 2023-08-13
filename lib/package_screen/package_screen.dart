import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class PackageScreen extends StatefulWidget {
  @override
  State<PackageScreen> createState() => _PackageScreenState();
}

class _PackageScreenState extends State<PackageScreen> {
  @override
  Widget build(BuildContext context) {
    double maxwidth = MediaQuery.of(context).size.width;
    double maxheight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                width: maxwidth,
                height: maxheight,
                color: Colors.white,
              ),
              Column(
                children: [
                  Container(
                    width: maxwidth,
                    height: 100,
                    color: Colors.amber,
                    child: Row(),
                  ),
                ],
              ),
              Positioned(
                top: 300,
                child: Container(
                  width: maxwidth,
                  height: maxheight,
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: maxwidth / 4),
                        child: Column(
                          children: [
                            Facilities(facility: 'No Ads'),
                            Facilities(facility: 'Faster Connection'),
                            Facilities(facility: 'Worldwide Location'),
                            Facilities(facility: 'Link Up to 5 Devices'),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 80,
                      ),
                      Container(
                        height: 60,
                        width: maxwidth / 1.2,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            gradient: LinearGradient(
                              colors: [
                                Color.fromARGB(255, 255, 190, 51),
                                Color.fromARGB(255, 255, 119, 0),
                              ],
                            )),
                        child: Padding(
                          padding: EdgeInsets.only(left: 20, right: 20),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '1 MONTH',
                                style: TextStyle(
                                    fontSize: 13, color: Colors.white),
                              ),
                              Text(
                                '\$11.99/month',
                                style: TextStyle(
                                    fontSize: 12, color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 60,
                        width: maxwidth / 1.2,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            gradient: LinearGradient(
                              colors: [
                                Color.fromARGB(255, 255, 190, 51),
                                Color.fromARGB(255, 255, 119, 0),
                              ],
                            )),
                        child: Padding(
                          padding: EdgeInsets.only(left: 20, right: 20),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    '1 MONTH',
                                    style: TextStyle(
                                        fontSize: 13, color: Colors.white),
                                  ),
                                  Container(
                                    height: 15,
                                    width: 60,
                                    decoration: BoxDecoration(
                                      color: Colors.yellow,
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                    child: Center(
                                      child: Text(
                                        'Save 58%',
                                        style: TextStyle(
                                            fontSize: 11,
                                            color: Colors.amber.shade900),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    '\$59.99/year',
                                    style: TextStyle(
                                        fontSize: 12, color: Colors.white),
                                  ),
                                  Text(
                                    '\$4.99/month',
                                    style: TextStyle(
                                        fontSize: 10, color: Colors.white),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 60,
                        width: maxwidth / 1.2,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            gradient: LinearGradient(
                              colors: [
                                Color.fromARGB(255, 47, 99, 221),
                                Color.fromARGB(255, 15, 7, 105),
                              ],
                            )),
                        child: Center(
                          child: Text(
                            'TRY PREMIUM FREE',
                            style: TextStyle(fontSize: 18, color: Colors.white),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Center(
                          child: Text(
                        '7-day free trial. Then \$11.99/month.',
                        style: TextStyle(fontSize: 10, color: Colors.black38),
                      )),
                      SizedBox(
                        height: 40,
                      ),
                      Center(
                          child: Text(
                        'Recurring billing. Cancel anytime on Google Play Store',
                        style: TextStyle(fontSize: 10, color: Colors.black38),
                      )),
                    ],
                  ),
                ),
              ),
              Container(
                width: double.maxFinite,
                height: 250,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/banner.png'),
                      fit: BoxFit.cover),
                  color: Colors.red,
                  borderRadius: BorderRadius.vertical(
                      bottom: Radius.elliptical(maxwidth, 100.0)),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class Facilities extends StatelessWidget {
  String facility;
  Facilities({required this.facility});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.check,
          size: 25,
          color: Colors.amber.shade900,
        ),
        SizedBox(
          width: 5,
        ),
        Text(
          facility,
          style: TextStyle(fontSize: 15),
        ),
      ],
    );
  }
}
