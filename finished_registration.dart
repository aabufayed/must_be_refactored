import 'package:beauty_queen/View/HomePage.dart';
import 'package:beauty_queen/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CongratulationsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double fontSize;
    if (kScreenWidth <= 414) {
      fontSize = 20.0;
    } else {
      fontSize = 30.0;
    }
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(
          color: kBlackColor,
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/congrads.png',
                        width: kScreenWidth * 0.8,
                      ),
                      SizedBox(height: 20),
                      Container(
                        width: kScreenWidth * 0.75,
                        height: kScreenHeight * 0.2,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              kCongratulationsMessage,
                              textAlign: TextAlign.center,
                              style: kTheSansTextStyle,
                            ),
                            SizedBox(height: 10),
                            Text(
                              kAccountActivationSuccessMessage,
                              textAlign: TextAlign.center,
                              style: kTheSansTextStyle,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        kShoppingPromptMessage,
                        textAlign: TextAlign.center,
                        style: kTheSansTextStyleGray,
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: kScreenWidth * 0.9,
                height: kScreenHeight * 0.08,
                margin: EdgeInsets.only(bottom: 20),
                decoration: BoxDecoration(
                  color: kPinkColor,
                  borderRadius: BorderRadius.circular(47.34),
                ),
                child: TextButton(
                  style: TextButton.styleFrom(
                    foregroundColor: kWhiteColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(47.34),
                    ),
                  ),
                  onPressed: () {
                    Get.to(HomePage());
                  },
                  child: Text(
                    kStartShopping,
                    style: TextStyle(
                      color: kWhiteColor,
                      fontSize: fontSize,
                      fontFamily: 'TheSans',
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
