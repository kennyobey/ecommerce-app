import 'dart:convert';

import 'package:flutter/material.dart';

import 'package:socialauth/constants/colors.dart';

import '../widgets/numpads.dart';

class VerifyStoreCode extends StatefulWidget {
  const VerifyStoreCode({message});

  @override
  _VerifyStoreCodeState createState() => _VerifyStoreCodeState();
}

class _VerifyStoreCodeState extends State<VerifyStoreCode> {
  String code = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.only(left: 20, right: 20, bottom: 30),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.15,
              decoration: const BoxDecoration(
                color: AppColors.primaryColor,
                image: DecorationImage(
                  scale: 2.5,
                  alignment: Alignment.topRight,
                  fit: BoxFit.fitHeight,
                  image: AssetImage(
                    "assets/images/VENDBOX-88-WHITE 2.png",
                  ),
                ),
              ),
              alignment: Alignment.bottomRight,
              // child: Image.asset(
              //   "assets/images/VENDBOX-88-WHITE 1.png",
              //   height: 200,
              //   width: 200,
              // ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.80,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  const SizedBox(
                    height: 10,
                  ),
                  Image.asset(
                    "assets/images/FULL-LOGO-2 1.png",
                    height: 90,
                    width: 258,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 0, bottom: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const <Widget>[
                        Text(
                          "Enter Store Code",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            color: AppColors.textColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      buildCodeNumberBox(
                          code.isNotEmpty ? code.substring(0, 1) : ""),
                      buildCodeNumberBox(
                          code.length > 1 ? code.substring(1, 2) : ""),
                      buildCodeNumberBox(
                          code.length > 2 ? code.substring(2, 3) : ""),
                      buildCodeNumberBox(
                          code.length > 3 ? code.substring(3, 4) : ""),
                      buildCodeNumberBox(
                          code.length > 4 ? code.substring(4, 5) : ""),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  NumericPad(
                    onNumberSelected: (value) {
                      print(value);
                      setState(() {
                        if (value != -1) {
                          if (code.length < 5) {
                            code = code + value.toString();
                          }
                        } else {
                          code = code.substring(0, code.length - 1);
                        }
                        print(code);
                      });
                    },
                  ),
                  Image.asset("assets/images/powered_by_color 1.png"),
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }

  Widget buildCodeNumberBox(String codeNumber) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: SizedBox(
        width: 60,
        height: 60,
        child: Container(
          decoration: const BoxDecoration(
            // border: Border.all(
            //   color: Colors.deepPurple,
            // ),
            color: AppColors.boxcolor,
            borderRadius: BorderRadius.all(
              Radius.circular(5),
            ),
            // boxShadow: <BoxShadow>[
            //   BoxShadow(
            //       color: Colors.black12,
            //       blurRadius: 2.0,
            //       spreadRadius: 1,
            //       offset: Offset(0.0, 0.50))
            // ],
          ),
          child: Center(
            child: Text(
              codeNumber,
              style: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: AppColors.codeNumberColor,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
