import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:socialauth/widgets/product_name.dart';

import '../constants/colors.dart';
import '../widgets/dropdown_button.dart';

class SalesOrder extends StatefulWidget {
  const SalesOrder({Key? key}) : super(key: key);

  @override
  State<SalesOrder> createState() => _SalesOrderState();
}

class _SalesOrderState extends State<SalesOrder>
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
              padding: const EdgeInsets.only(left: 20, right: 20, bottom: 30),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.10,
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
                    padding: EdgeInsets.all(8),
                    height: 530,
                    width: 332,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(16)),
                      color: Colors.white,
                    ),
                    child: Expanded(
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
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
                                      icon:
                                          const Icon(Icons.color_lens_outlined),
                                      color: AppColors.primaryColor,
                                    ),
                                  )
                                ],
                              ),
                              const ProductName(
                                image: "assets/images/SalesIcon.png",
                              )
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
            ),
          ],
        ),
      ),
    );
  }
}
