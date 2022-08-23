import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:socialauth/widgets/product_name.dart';

import '../constants/colors.dart';
import '../constants/text_style.dart';
import '../widgets/dropdown_button.dart';
import 'checkout_order.dart';

class PaymentProcess extends StatefulWidget {
  const PaymentProcess({Key? key}) : super(key: key);

  @override
  State<PaymentProcess> createState() => _PaymentProcessState();
}

class _PaymentProcessState extends State<PaymentProcess>
    with SingleTickerProviderStateMixin {
  late final TabController _tabController = TabController(
    length: 3,
    vsync: this,
  );
  // @override
  // void initState() {
  //   _tabController = TabController(length: 3, vsync: this);
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.13,
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
              alignment: Alignment.topCenter,
              child: Column(children: const [
                SizedBox(
                  height: 30,
                ),
                Text(
                  "Greetings JEREMIAH",
                  style: AppTextStyle.style16white500,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Payment Process",
                  style: AppTextStyle.style16white500,
                )
              ]),
            ),
            Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: TabBar(
                unselectedLabelColor: Colors.black,
                labelColor: Colors.red,
                tabs: const [
                  Text(
                    " Sales Order",
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: "Inter",
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    "Today Sales",
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: "Inter",
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    "Suspended Sales",
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: "Inter",
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                    ),
                  )
                ],
                controller: _tabController,
                indicatorSize: TabBarIndicatorSize.tab,
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.grey[200],
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                    // height: 490,
                    // width: 200,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(16)),
                      color: Colors.white,
                    ),
                    child: TabBarView(
                      controller: _tabController,
                      children: [
                        Column(
                          children: [
                            Row(
                              children: const [
                                Text("Type"),
                                SizedBox(
                                  width: 5,
                                ),
                                Expanded(
                                  child: DropDownBox(
                                    title: "SALES",
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              //crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                const Expanded(
                                  child: DropDownBox(
                                    title: "All",
                                  ),
                                ),
                                const SizedBox(width: 5),
                                Container(
                                  height: 45,
                                  width: 45,
                                  decoration: const BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(5)),
                                    color: AppColors.codeNumberColor,
                                  ),
                                  child: IconButton(
                                    onPressed: () {},
                                    icon: const Icon(Icons.search),
                                    color: AppColors.primaryColor,
                                  ),
                                ),
                                const SizedBox(width: 5),
                                Container(
                                  height: 45,
                                  width: 45,
                                  decoration: const BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(5)),
                                    color: AppColors.codeNumberColor,
                                  ),
                                  child: IconButton(
                                    onPressed: () {},
                                    icon: const Icon(Icons.color_lens_outlined),
                                    color: AppColors.primaryColor,
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                        Text('Person'),
                        Text('Person')
                      ],
                    ),
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
