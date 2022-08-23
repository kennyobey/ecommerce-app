import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../constants/text_style.dart';
import '../widgets/dropdown_button.dart';
import '../widgets/product_name.dart';

class CheckOutOrder extends StatefulWidget {
  const CheckOutOrder({Key? key}) : super(key: key);

  @override
  State<CheckOutOrder> createState() => _CheckOutOrderState();
}

class _CheckOutOrderState extends State<CheckOutOrder>
    with SingleTickerProviderStateMixin {
  late final TabController _tabController = TabController(
    length: 3,
    vsync: this,
  );
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
                  "Checkout Sales Order",
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
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              //crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: const [
                                Text("Customer"),
                                SizedBox(
                                  width: 5,
                                ),
                                Expanded(
                                  child: DropDownBox(
                                    title: "Walk-In",
                                  ),
                                ),
                                SizedBox(width: 5),
                              ],
                            ),
                            const Divider(
                              thickness: 2.5,
                            ),
                            const CheckoutProductName(
                              image: "assets/images/ProductImage.png",
                              productName: "Product name",
                              categoryName: "Tsh 150,000",
                              price: "Tsh 300,000",
                            ),
                            const Divider(
                              thickness: 1,
                            ),
                            const CheckoutProductName(
                              image: "assets/images/ProductImage.png",
                              productName: "Product name",
                              categoryName: "Tsh 150,000",
                              price: "Tsh 300,000",
                            ),
                            const Divider(
                              thickness: 1,
                            ),
                            Spacer(),
                            const Divider(
                              thickness: 2.5,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  "Discount",
                                  style: AppTextStyle.style18boldprimary500,
                                ),
                                IconButton(
                                    onPressed: () {},
                                    padding: EdgeInsets.zero,
                                    constraints: BoxConstraints(),
                                    icon: const Icon(
                                      Icons.add_circle_outline,
                                      color: AppColors.primaryColor,
                                      size: 20,
                                    ))
                              ],
                            ),
                            const Divider(
                              thickness: 2.5,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  "Tax",
                                  style: AppTextStyle.style18boldprimary500,
                                ),
                                IconButton(
                                    onPressed: () {},
                                    padding: EdgeInsets.zero,
                                    constraints: BoxConstraints(),
                                    icon: const Icon(
                                      Icons.add_circle_outline,
                                      color: AppColors.primaryColor,
                                      size: 20,
                                    ))
                              ],
                            ),
                            const Divider(
                              thickness: 2.5,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text(
                                  "Total",
                                  style: AppTextStyle.style18boldblack500,
                                ),
                                Text(
                                  "Tsh 500,000",
                                  style: AppTextStyle.style18boldblack500,
                                ),
                              ],
                            ),
                            const Divider(
                              thickness: 2.5,
                            ),
                            Container(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 5),
                              height: 50,
                              width: MediaQuery.of(context).size.width,
                              decoration: const BoxDecoration(
                                color: AppColors.primaryColor,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(12)),
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    height: 35,
                                    width: 45,
                                    decoration: const BoxDecoration(
                                      color: Colors.white,
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(5)),
                                    ),
                                    child: Row(
                                      children: [
                                        IconButton(
                                          onPressed: () {},
                                          padding: EdgeInsets.zero,
                                          constraints: BoxConstraints(),
                                          icon: const Icon(
                                            Icons.delete_forever_outlined,
                                            size: 20,
                                          ),
                                          color: AppColors.primaryColor,
                                        ),
                                        const Text(
                                          "3",
                                          style: AppTextStyle
                                              .style18boldprimary500,
                                        )
                                      ],
                                    ),
                                  ),
                                  const Text(
                                    "Total : Tsh 500,000.00 -->",
                                    style: AppTextStyle.style18boldwhite500,
                                  )
                                ],
                              ),
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
          ],
        ),
      ),
    );
  }
}

class CheckoutProductName extends StatelessWidget {
  final String? productName,
      categoryName,
      stock,
      image,
      price,
      discount,
      xValue;
  final Color? color, iconcolor, textColor;
  final void Function()? onTap;

  const CheckoutProductName(
      {Key? key,
      this.productName,
      this.image,
      this.color,
      this.iconcolor,
      this.categoryName,
      this.stock,
      this.textColor,
      this.price,
      this.discount,
      this.xValue,
      this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
          width: MediaQuery.of(context).size.width,
          height: 50,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 0),
            child: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        image ?? "",
                        width: 35,
                        height: 35,
                      )
                    ],
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        productName ?? "",
                        style: AppTextStyle.style14black500,
                      ),
                      Text(
                        categoryName ?? "",
                        style: AppTextStyle.style12accent500,
                      ),
                    ],
                  ),
                  Spacer(),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        price ?? "",
                        style: AppTextStyle.style14black500,
                      ),
                      // Text(
                      //   price ?? "",
                      //   style: AppTextStyle.style14black500,
                      // ),
                      IconButton(
                        onPressed: () {},
                        padding: EdgeInsets.zero,
                        constraints: BoxConstraints(),
                        icon: const Icon(
                          Icons.delete_forever_outlined,
                          size: 15,
                        ),
                        color: AppColors.accentColor,
                      ),
                    ],
                  )
                ]),
          )),
    );
  }
}
