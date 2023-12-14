import 'dart:math';
import 'package:flutter/material.dart';

import 'package:uts/service/user_server.dart';
import 'package:uts/data/by_status.dart';
import 'package:fl_chart/fl_chart.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardHomeState();
}

class _DashboardHomeState extends State<Dashboard> {
  UserService? service;
  List<ByStatus> byStatus = [];
  int totalByStatus = 0;
  String selectedStatus = 'Lulus';

  List<Color> stChartColors = [];
  List<double> stChartOpacities = [];

  late Future myInit;

  Color getRandomColor() {
  // return Colors.primaries[Random().nextInt(Colors.primaries.length)];
  return Color((Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0);
  }

  Future initialize() async {
    byStatus = (await service!.getShowDataByStatus());
    setState(() {
      byStatus = byStatus;
      totalByStatus = byStatus
          .firstWhere((item) => item.status == selectedStatus)
          .total;
      stChartColors =
          List.generate(byStatus.length, (index) => getRandomColor());
      stChartOpacities = List.generate(byStatus.length, (index) => 1.0);
    });
  }

  Future refresh() async {
    byStatus = (await service!.getShowDataByStatus());
    setState(() {
      byStatus = byStatus;
      totalByStatus = byStatus
        .firstWhere((item) => item.status == selectedStatus)
        .total;
    });
  }

  void initState() {
    service = UserService();
    // initialize();
    myInit = initialize();
    super.initState();
  }

  Future<List<ByStatus>> getShowDataByStatus() async {
    byStatus = (await service!.getShowDataByStatus());
    return byStatus;
  }

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard Reports'),
        backgroundColor: const Color.fromARGB(255, 104, 2, 238),
        centerTitle: true,
        titleTextStyle: const TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.bold,
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(
                  horizontal: 16.0,
                  vertical: 8,
                  ),
        child: Column(
          children : [
        Card(
          elevation: 4.0,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Status Kelulusan',
                  style: TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(width: 2.0),
                FutureBuilder(
                  future: myInit,
                  builder: (context, snapshot) {
                    if (snapshot.connectionState ==
                        ConnectionState.done) {
                          return Column(
                            children: [
                              Row(
                                children: [
                                  Expanded(
                                    flex: 2,
                                    child: SizedBox(
                                      height: 200,
                                      width: 300,
                                      child: PieChart(
                                        PieChartData(
                                          sections: List.generate(
                                            byStatus.length,
                                            (index) => PieChartSectionData(color: stChartColors[index],
                                            value: byStatus[index].total / (byStatus.fold(0,(sum, item) => sum + item.total)) * 100,
                                            title: ((byStatus[index].total / (byStatus.fold(0,(sum, item) => sum + item.total)) * 100)
                                            .round().toString() + "%"),
                                            radius: selectedStatus == byStatus[index].status ? 86 : 78,
                                            titleStyle: TextStyle(fontWeight: FontWeight.bold),
                                            titlePositionPercentageOffset: (byStatus[index].total/(byStatus.fold(0,(sum,item)=>sum+item.total))*100) >= 7?0.5:1.2,
                                            ),
                                          ),
                                        sectionsSpace: 4,
                                        centerSpaceRadius: 5,
                                        ),
                                      ),
                                    ),
                                  ),
                                SizedBox(width: 10.0),
                                Expanded(
                                  flex: 1,
                                  child: Column(
                                    children: byStatus.map((item) {
                                      return Row(
                                        children: [
                                          Container(
                                            width: 10,
                                            height: 10,
                                            color: stChartColors[byStatus.indexOf(item)],
                                          ),
                                          SizedBox(width: 5),
                                          Text(item.status == "Lulus"
                                          ? "Lulus"
                                          : "Tidak Lulus",
                                          )
                                        ],
                                      );
                                    }).toList(),
                                  ),
                                ),
                                ],
                              ),
                            ],
                          );
                        } else {
                          return Center(
                            child: CircularProgressIndicator());
                        }
                  },
                ),
              ],
            ),
          ),
        ),
      ]),
      ),
      ),
    );
  }
}