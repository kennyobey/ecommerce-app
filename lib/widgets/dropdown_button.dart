import 'package:flutter/material.dart';

class DropDownBox extends StatelessWidget {
  final String? title, subTitle, image;
  final Color? color, iconcolor, textColor;

  const DropDownBox(
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
        height: 45,
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey,
            style: BorderStyle.solid,
            width: 1.0,
          ),
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(title ?? ""),
              const Spacer(),
              IconButton(
                  onPressed: () {}, icon: const Icon(Icons.arrow_drop_down))
            ],
          ),
        ));
  }
}
