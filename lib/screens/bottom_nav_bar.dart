import 'package:flutter/material.dart';
import 'package:socialauth/constants/colors.dart';

import 'chartview.dart';
import 'dashboard.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int pageIndex = 0;

  final pages = [
    const DashBoard(),
    ChartView(),
    const Page3(),
    const Page4(),
    const Page5(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: pages[pageIndex],
      bottomNavigationBar: buildMyNavBar(context),
    );
  }

  Container buildMyNavBar(BuildContext context) {
    return Container(
      height: 50,
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
              enableFeedback: false,
              onPressed: () {
                setState(() {
                  pageIndex = 0;
                });
              },
              icon: pageIndex == 0
                  ? const ImageIcon(
                      AssetImage(
                        "assets/images/HomeIcon.png",
                      ),
                      color: AppColors.primaryColor,
                      size: 100,
                    )
                  : const ImageIcon(
                      AssetImage(
                        "assets/images/HomeIcon.png",
                      ),
                      color: Colors.grey,
                      size: 100,
                    )),
          IconButton(
              enableFeedback: false,
              onPressed: () {
                setState(() {
                  pageIndex = 1;
                });
              },
              icon: pageIndex == 1
                  ? const ImageIcon(
                      AssetImage(
                        "assets/images/SalesIcon.png",
                      ),
                      color: AppColors.primaryColor,
                      size: 100,
                    )
                  : const ImageIcon(
                      AssetImage(
                        "assets/images/SalesIcon.png",
                      ),
                      color: Colors.grey,
                      size: 100,
                    )),
          IconButton(
              enableFeedback: false,
              onPressed: () {
                setState(() {
                  pageIndex = 2;
                });
              },
              icon: pageIndex == 2
                  ? const ImageIcon(
                      AssetImage(
                        "assets/images/ReceivingIcon.png",
                      ),
                      color: AppColors.primaryColor,
                      size: 100,
                    )
                  : const ImageIcon(
                      AssetImage(
                        "assets/images/ReceivingIcon.png",
                      ),
                      color: Colors.grey,
                      size: 100,
                    )),
          IconButton(
              enableFeedback: false,
              onPressed: () {
                setState(() {
                  pageIndex = 3;
                });
              },
              icon: pageIndex == 3
                  ? const ImageIcon(
                      AssetImage(
                        "assets/images/MoreIcon.png",
                      ),
                      color: AppColors.primaryColor,
                      size: 100,
                    )
                  : const ImageIcon(
                      AssetImage(
                        "assets/images/MoreIcon.png",
                      ),
                      color: Colors.grey,
                      size: 120,
                    )),
          IconButton(
              enableFeedback: false,
              onPressed: () {
                setState(() {
                  pageIndex = 4;
                });
              },
              icon: pageIndex == 4
                  ? const ImageIcon(
                      AssetImage(
                        "assets/images/settingsIcon.png",
                      ),
                      color: AppColors.primaryColor,
                      size: 100,
                    )
                  : const ImageIcon(
                      AssetImage(
                        "assets/images/settingsIcon.png",
                      ),
                      color: Colors.grey,
                      size: 120,
                    )),
        ],
      ),
    );
  }
}

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.primaryColor,
      child: Center(
        child: Text(
          "Page Number 1",
          style: TextStyle(
            color: Colors.green[900],
            fontSize: 45,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffC4DFCB),
      child: Center(
        child: Text(
          "Page Number 2",
          style: TextStyle(
            color: Colors.green[900],
            fontSize: 45,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}

class Page3 extends StatelessWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffC4DFCB),
      child: Center(
        child: Text(
          "Page Number 3",
          style: TextStyle(
            color: Colors.green[900],
            fontSize: 45,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}

class Page4 extends StatelessWidget {
  const Page4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffC4DFCB),
      child: Center(
        child: Text(
          "Page Number 4",
          style: TextStyle(
            color: Colors.green[900],
            fontSize: 45,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}

class Page5 extends StatelessWidget {
  const Page5({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffC4DFCB),
      child: Center(
        child: Text(
          "Page Number 4",
          style: TextStyle(
            color: Colors.green[900],
            fontSize: 45,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
