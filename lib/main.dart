import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      theme: ThemeData(
          backgroundColor: Color.fromRGBO(0, 13, 18, 100),
          scaffoldBackgroundColor: Color.fromRGBO(0, 13, 18, 100),
          primarySwatch: Colors.blue,
          canvasColor: Color.fromRGBO(0, 24, 33, 100)),
      home: FirstPage(),
    );
  }
}

class FirstPage extends StatelessWidget {
  
  List<ChartSampleData> chartData = [
    ChartSampleData(
        x: DateTime(2016, 01, 11),
        open: 98.97,
        high: 101.19,
        low: 95.36,
        close: 97.13),
    ChartSampleData(
        x: DateTime(2016, 01, 18),
        open: 98.41,
        high: 101.46,
        low: 93.42,
        close: 101.42),
    ChartSampleData(
        x: DateTime(2016, 01, 25),
        open: 101.52,
        high: 101.53,
        low: 92.39,
        close: 97.34),
    ChartSampleData(
        x: DateTime(2016, 02, 01),
        open: 96.47,
        high: 97.33,
        low: 93.69,
        close: 94.02),
    ChartSampleData(
        x: DateTime(2016, 02, 08),
        open: 93.13,
        high: 96.35,
        low: 92.59,
        close: 93.99),
    ChartSampleData(
        x: DateTime(2016, 02, 15),
        open: 95.02,
        high: 98.89,
        low: 94.61,
        close: 96.04),
    ChartSampleData(
        x: DateTime(2016, 02, 22),
        open: 96.31,
        high: 98.0237,
        low: 93.32,
        close: 96.91),
    ChartSampleData(
        x: DateTime(2016, 02, 29),
        open: 96.86,
        high: 103.75,
        low: 96.65,
        close: 103.01),
    ChartSampleData(
        x: DateTime(2016, 03, 07),
        open: 102.39,
        high: 102.83,
        low: 100.15,
        close: 102.26),
    ChartSampleData(
        x: DateTime(2016, 03, 12),
        open: 106.5,
        high: 106.5,
        low: 110.5,
        close: 109.5),
    ChartSampleData(
        x: DateTime(2016, 01, 11),
        open: 98.97,
        high: 101.19,
        low: 95.36,
        close: 97.13),
    ChartSampleData(
        x: DateTime(2016, 01, 18),
        open: 98.41,
        high: 101.46,
        low: 93.42,
        close: 101.42),
    ChartSampleData(
        x: DateTime(2016, 01, 25),
        open: 101.52,
        high: 101.53,
        low: 92.39,
        close: 97.34),
    ChartSampleData(
        x: DateTime(2016, 02, 01),
        open: 96.47,
        high: 97.33,
        low: 93.69,
        close: 94.02),
    ChartSampleData(
        x: DateTime(2016, 02, 08),
        open: 93.13,
        high: 96.35,
        low: 92.59,
        close: 93.99),
    ChartSampleData(
        x: DateTime(2016, 02, 15),
        open: 95.02,
        high: 98.89,
        low: 94.61,
        close: 96.04),
    ChartSampleData(
        x: DateTime(2016, 02, 22),
        open: 96.31,
        high: 98.0237,
        low: 93.32,
        close: 96.91),
    ChartSampleData(
        x: DateTime(2016, 02, 29),
        open: 96.86,
        high: 103.75,
        low: 96.65,
        close: 103.01),
    ChartSampleData(
        x: DateTime(2016, 03, 07),
        open: 102.39,
        high: 102.83,
        low: 100.15,
        close: 102.26),
    ChartSampleData(
        x: DateTime(2016, 03, 12),
        open: 106.5,
        high: 106.5,
        low: 110.5,
        close: 109.5),
  ];

  Widget build(BuildContext context) {
    
    return Scaffold(
        backgroundColor: Color.fromRGBO(0, 10, 20, 5),
        appBar: AppBar(
            foregroundColor: Color.fromRGBO(0, 13, 18, 100),
            title: Text('State Bank Of India'),
            backgroundColor: Color.fromRGBO(0, 24, 33, 100)),
        body: Column(children: <Widget>[
          
          SfCartesianChart(
              borderColor: Colors.black,
              zoomPanBehavior:
                  ZoomPanBehavior(enablePinching: true, enablePanning: true),
              backgroundColor: Color.fromRGBO(0, 13, 18, 100),
              primaryXAxis: DateTimeAxis(
                  visibleMinimum: DateTime(2016, 01, 8),
                  visibleMaximum: DateTime(2016, 03, 16),
                  edgeLabelPlacement: EdgeLabelPlacement.shift,
                  intervalType: DateTimeIntervalType.days,
                  majorGridLines: MajorGridLines(width: 0)),
              primaryYAxis: NumericAxis(interval: 4),
              series: <ChartSeries<ChartSampleData, DateTime>>[
                CandleSeries<ChartSampleData, DateTime>(
                  dataSource: chartData,
                  xValueMapper: (ChartSampleData sales, _) => sales.x,
                  lowValueMapper: (ChartSampleData sales, _) => sales.low,
                  highValueMapper: (ChartSampleData sales, _) => sales.high,
                  openValueMapper: (ChartSampleData sales, _) => sales.open,
                  closeValueMapper: (ChartSampleData sales, _) => sales.close,
                  name: 'Sales',
                )
              ])

          // ),
          ,
          SizedBox(width: 20.0, height: 20.0),
          Row(
            children: [
              SizedBox(width: 130.0, height: 10.0),
              Text(
                'ABC',
                style: TextStyle(color: Colors.white70, fontSize: 10),
              ),
              SizedBox(width: 50.0, height: 10.0),
              Text(
                'ABC',
                style: TextStyle(color: Colors.white70, fontSize: 10),
              ),
              SizedBox(width: 46.0, height: 10.0),
              Text(
                'ABC',
                style: TextStyle(color: Colors.white70, fontSize: 10),
              ),
              SizedBox(width: 45.0, height: 10.0),
              Text(
                'ABC',
                style: TextStyle(color: Colors.white70, fontSize: 10),
              )
            ],
          ),
          SizedBox(width: 20.0, height: 10.0),

          Row(children: [
            SizedBox(width: 120.0, height: 10.0),
            Chip(
                label: Text('0.0'),
                backgroundColor: Colors.grey[700],
                padding: EdgeInsets.all(5.0)),
            SizedBox(width: 20.0, height: 10.0),
            Chip(
                label: Text('0.0'),
                backgroundColor: Colors.grey[700],
                padding: EdgeInsets.all(5.0)),
            SizedBox(width: 20.0, height: 10.0),
            Chip(
                label: Text('0.0'),
                backgroundColor: Colors.grey[700],
                padding: EdgeInsets.all(5.0)),
            SizedBox(width: 20.0, height: 10.0),
            Chip(
                label: Text('0.0',),
                backgroundColor: Colors.grey[700],
                padding: EdgeInsets.all(5.0)),
          ]),
          SizedBox(width: 90.0, height: 20.0),
          Row( children:[SizedBox(width: 95.0, height: 0.0),Text(
                'OPEN',
                style: TextStyle(color: Colors.white70, fontSize: 10),
              ),SizedBox(width: 145.0, height: 0.0),Text(
                'CLOSE',
                style: TextStyle(color: Colors.white70, fontSize: 10),
              ),]),


          Row(children: [SizedBox(width: 90.0, height: 30.0), Chip(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(topRight: Radius.circular(20),bottomRight: Radius.circular(20))),
                label: Text('0.0', style: TextStyle(color: Colors.white70, fontSize: 10)),
                backgroundColor: Color.fromRGBO(30, 69, 115, 100),
                padding: EdgeInsets.only(left: 100.0)),
                
                SizedBox(width: 40.0, height: 10.0), Chip(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(topRight: Radius.circular(20),bottomRight: Radius.circular(20))),
                label: Text('0.0', style: TextStyle(color: Colors.white70, fontSize: 10)),
                backgroundColor: Color.fromRGBO(30, 69, 115, 100),
                padding: EdgeInsets.only(left: 100.0)),]),


          Row( children:[SizedBox(width: 95.0, height: 1.0),Text(
                'HIGH',
                style: TextStyle(color: Colors.white70, fontSize: 10),
              ),SizedBox(width: 150.0, height: 1.0),Text(
                'LOW',
                style: TextStyle(color: Colors.white70, fontSize: 10),
              ),]),

          
                Row(children: [SizedBox(width: 90.0, height: 0), Chip(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(topRight: Radius.circular(20),bottomRight: Radius.circular(20))),
                label: Text('0.0', style: TextStyle(color: Colors.white70, fontSize: 10)),
                backgroundColor: Color.fromRGBO(30, 69, 115, 100),
                padding: EdgeInsets.only(left: 100.0)),
                
                SizedBox(width: 40.0, height: 0.0), Chip(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(topRight: Radius.circular(20),bottomRight: Radius.circular(20))),
                label: Text('0.0', style: TextStyle(color: Colors.white70, fontSize: 10)),
                backgroundColor: Color.fromRGBO(30, 69, 115, 100),
                padding: EdgeInsets.only(left: 100.0)),]),


                Row(children: [SizedBox(width: 120.0, height: 100.0),Text(
                'Volume:',
                style: TextStyle(color: Colors.white70, fontSize: 10),
              ),SizedBox(width: 15.0, height: 100.0),Text(
                '0.0',
                style: TextStyle(color: Colors.white70, fontSize: 10),
              ),SizedBox(width: 90.0, height: 100.0),Text(
                'Live Price:',
                style: TextStyle(color: Colors.white70, fontSize: 10),
              ),SizedBox(width: 15.0, height: 100.0),Text(
                '0.0',
                style: TextStyle(color: Colors.white70, fontSize: 10),
              )]),
         

          SizedBox(width: 1.0,height: 1.0),
          Text(
                'Off',
                style: TextStyle(color: Colors.white70, fontSize: 10),
              ),
          Row(children: [
            SizedBox(width: 25.0, height: 80.0),
            FloatingActionButton(
              child: Icon(
                Icons.analytics_outlined,
              ),
              backgroundColor: Colors.blue,
              onPressed: () {
                // Icons.
              },
              // child: Text('TextButton'),
            ),
            SizedBox(width: 340.0, height: 10.0),
            FloatingActionButton(
              child: Icon(
                Icons.analytics_outlined,
              ),
              backgroundColor: Colors.red,
              onPressed: () {
                // Icons.
              },
              // child: Text('TextButton'),
            ),
          ])
        ]));
    // )

    // )
  }
}

class SecondPage extends StatelessWidget {
  final String data;

  SecondPage({
    Key? key,
    required this.data,
  }) : super(key: key);

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Routing App'),
      ),
      body: Center(
          child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
        Text(
          'Second Page',
          style: TextStyle(fontSize: 50),
        ),
        Text(
          data,
          style: TextStyle(fontSize: 20),
        )
      ])),
    );
  }
}

class ChartSampleData {
  ChartSampleData({this.x, this.open, this.high, this.low, this.close});

  final DateTime? x;
  final double? open;
  final double? high;
  final double? low;
  final double? close;
}

