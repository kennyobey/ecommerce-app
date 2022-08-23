import 'package:flutter/material.dart';
import 'package:socialauth/constants/colors.dart';
import 'package:socialauth/constants/text_style.dart';

class ProductName extends StatelessWidget {
  final String? productName,
      categoryName,
      stock,
      image,
      price,
      discount,
      xValue;
  final Color? color, iconcolor, textColor;
  final void Function()? onTap;

  const ProductName(
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
          height: 70,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 0),
            child: Row(
                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        image ?? "",
                        width: 60,
                        height: 60,
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Column(
                    // mainAxisAlignment: MainAxisAlignment.center,
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
                      Text(
                        stock ?? "",
                        style: AppTextStyle.style12accent500,
                      )
                    ],
                  ),
                  Spacer(),
                  Column(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        price ?? "",
                        style: AppTextStyle.style14black500,
                      ),
                      Row(
                        children: [
                          IconButton(
                            onPressed: () {},
                            padding: EdgeInsets.zero,
                            constraints: BoxConstraints(),
                            icon: const Icon(
                              Icons.delete_forever_outlined,
                              size: 10,
                            ),
                            color: AppColors.accentColor,
                          ),
                          Text(
                            xValue ?? "",
                            style: AppTextStyle.style12accent500,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          IconButton(
                            onPressed: () {},
                            padding: EdgeInsets.zero,
                            constraints: BoxConstraints(),
                            icon: const Icon(
                              Icons.add_circle_outline_outlined,
                              size: 10,
                            ),
                            color: AppColors.accentColor,
                          ),
                          Text(
                            discount ?? "",
                            style: AppTextStyle.style12accent500,
                          ),
                        ],
                      )
                    ],
                  )
                ]),
          )),
    );
  }
}
