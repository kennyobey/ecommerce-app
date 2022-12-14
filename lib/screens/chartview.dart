import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../models/chartmodels.dart';

class ChartView extends StatelessWidget {
  ChartView({Key? key}) : super(key: key);
  final List<BarChartModel> data = [
    BarChartModel(
      year: "2014",
      financial: 250,
      color: charts.ColorUtil.fromDartColor(Colors.purple),
    ),
    BarChartModel(
      year: "2015",
      financial: 300,
      color: charts.ColorUtil.fromDartColor(Colors.purple),
    ),
    BarChartModel(
      year: "2016",
      financial: 100,
      color: charts.ColorUtil.fromDartColor(Colors.purple),
    ),
    BarChartModel(
      year: "2017",
      financial: 360,
      color: charts.ColorUtil.fromDartColor(Colors.purple),
    ),
    BarChartModel(
      year: "2018",
      financial: 400,
      color: charts.ColorUtil.fromDartColor(Colors.purple),
    ),
    BarChartModel(
      year: "2019",
      financial: 400,
      color: charts.ColorUtil.fromDartColor(Colors.purple),
    ),
    BarChartModel(
      year: "2020",
      financial: 400,
      color: charts.ColorUtil.fromDartColor(Colors.purple),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    List<charts.Series<BarChartModel, String>> series = [
      charts.Series(
        id: "financial",
        data: data,
        domainFn: (BarChartModel series, _) => series.year,
        measureFn: (BarChartModel series, _) => series.financial,
        colorFn: (BarChartModel series, _) => series.color,
      ),
    ];
    return Scaffold(
      body: Stack(children: [
        Container(
          padding: const EdgeInsets.only(left: 20, right: 20, bottom: 30),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.28,
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
        Padding(
          padding: const EdgeInsets.only(top: 40, right: 10, left: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Greetings JEREMIAH",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
              ),
              const Text(
                "Last Login : 18 Jun, 3:46",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  const Text(
                    "Dashboard",
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: "Inter",
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                    ),
                  ),
                  const Spacer(),
                  IconButton(
                    icon: const Icon(
                      Icons.menu,
                      size: 25,
                      color: Colors.white,
                    ),
                    onPressed: () {},
                  )
                ],
              ),
              Container(
                height: 139,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(16)),
                  color: Colors.white,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text("SALES : TODAY",
                        style: TextStyle(
                          color: Colors.grey,
                          fontFamily: "Inter",
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w600,
                          fontSize: 12,
                        )),
                    const Text("Tsh 20,000,000.00",
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: "Inter",
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w700,
                          fontSize: 30,
                        )),
                    const SizedBox(
                      width: 279,
                      child: Divider(
                        color: Colors.black,
                        thickness: 1,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30, right: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              IconButton(
                                icon: const Icon(
                                  Icons.sync_alt,
                                  size: 25,
                                  color: AppColors.primaryColor,
                                ),
                                onPressed: () {},
                              ),
                              const Text("400 Transactions",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: "Inter",
                                    fontStyle: FontStyle.normal,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 12,
                                  )),
                            ],
                          ),
                          Container(
                            height: 24,
                            width: 74,
                            decoration: const BoxDecoration(
                              color: AppColors.codeNumberColor,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(6)),
                            ),
                            alignment: Alignment.center,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Text(
                                  "Change ->",
                                  style: TextStyle(
                                    color: AppColors.primaryColor,
                                    fontFamily: "Inter",
                                    fontStyle: FontStyle.normal,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 10,
                                  ),
                                  textAlign: TextAlign.center,
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 420,
                width: 360,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(16)),
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              const Text("SALES"),
                              const Spacer(),
                              IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.more_horiz))
                            ],
                          ),
                          const Text("Tsh 20,000,000.00"),
                          const Divider(
                            thickness: 1,
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 340,
                      width: 340,
                      color: Colors.white,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 10),
                      child: charts.BarChart(
                        series,
                        animate: true,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ]),
    );
  }
}
