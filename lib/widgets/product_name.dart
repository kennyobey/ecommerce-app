import 'package:flutter/material.dart';

class ProductName extends StatelessWidget {
  final String? title, subTitle, image;
  final Color? color, iconcolor, textColor;

  const ProductName(
      {Key? key,
      this.title,
      this.image,
      this.color,
      this.iconcolor,
      this.subTitle,
      this.textColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        height: 100,
        // decoration: BoxDecoration(
        //   border: Border.all(
        //     color: Colors.grey,
        //     style: BorderStyle.solid,
        //     width: 1.0,
        //   ),
        //   color: Colors.transparent,
        //   borderRadius: BorderRadius.circular(8.0),
        // ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      image ?? "",
                      width: 30,
                      height: 50,
                    )
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  //crossAxisAlignment: CrossAxisAlignment.center,
                  children: [Text("hello"), Text("hello tue"), Text("tue Tue")],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  //crossAxisAlignment: CrossAxisAlignment.center,
                  children: [Text("hello"), Text("hello tue"), Text("tue Tue")],
                )
              ]),
        ));
  }
}
