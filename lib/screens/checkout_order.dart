import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../widgets/dropdown_button.dart';
import '../widgets/product_name.dart';

class CheckOutOrder extends StatelessWidget {
  const CheckOutOrder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
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
                    borderRadius: BorderRadius.all(Radius.circular(5)),
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
                    borderRadius: BorderRadius.all(Radius.circular(5)),
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
            const Divider(
              thickness: 2.5,
            ),
            const ProductName(
              image: "assets/images/ProductImage.png",
              productName: "Product name",
              categoryName: "Categoy name",
              stock: "12 in stock",
              price: "Tsh 150,000",
              xValue: "x2",
              discount: "Discount",
            ),
            const Divider(
              thickness: 1,
            ),
            const ProductName(
              image: "assets/images/ProductImage.png",
              productName: "Product name",
              categoryName: "Categoy name",
              stock: "12 in stock",
              price: "Tsh 150,000",
              xValue: "x2",
              discount: "Discount",
            ),
            const Divider(
              thickness: 1,
            ),
            const ProductName(
              image: "assets/images/ProductImage.png",
              productName: "Product name",
              categoryName: "Categoy name",
              stock: "12 in stock",
              price: "Tsh 150,000",
              xValue: "x2",
              discount: "Discount",
            ),
            const Divider(
              thickness: 1,
            ),
            const ProductName(
              image: "assets/images/ProductImage.png",
              productName: "Product name",
              categoryName: "Categoy name",
              stock: "12 in stock",
              price: "Tsh 150,000",
              xValue: "x2",
              discount: "Discount",
            ),
            const Divider(
              thickness: 1,
            ),
            const ProductName(
              image: "assets/images/ProductImage.png",
              productName: "Product name",
              categoryName: "Categoy name",
              stock: "12 in stock",
              price: "Tsh 150,000",
              xValue: "x2",
              discount: "Discount",
            ),
            const Divider(
              thickness: 1,
            ),
          ],
        ),
      ),
    );
  }
}
