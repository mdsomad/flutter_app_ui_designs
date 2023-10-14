import 'package:flutter/material.dart';
import 'package:flutter_app_ui_designs/constants.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_charts/charts.dart';



class ChartArea extends StatelessWidget {
  const ChartArea({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SfCartesianChart(
      onDataLabelRender: (DataLabelRenderArgs args){
        int index = args.pointIndex!;
        List<CartesianChartPoint<dynamic>> dataPoint =
        args.dataPoints;

        if(dataPoint[index].y == 2300){
           args.text = "2.320.00 USD\n Now,7";
           args.textStyle = TextStyle(fontSize: 8,color: textColor);
           args.offset = Offset(0, 20);
        }
        if(dataPoint[index].y != 2300){
          args.text = '';
          args.offset =Offset(0,20);
        }
        
      },
      onMarkerRender: (MarkerRenderArgs args){
        if(!(args.pointIndex == 7)){
          args.markerHeight = 0;
          args.markerHeight = 0;
          args.markerWidth = 0;
        }
      },
      
      
      plotAreaBackgroundColor: Colors.transparent,
      margin: EdgeInsets.all(10),
      borderColor: Colors.transparent,
      plotAreaBorderWidth: 0,
      borderWidth: 0,
      primaryXAxis: CategoryAxis(
        labelPosition: ChartDataLabelPosition.outside,
        labelAlignment: LabelAlignment.center,
        labelPlacement: LabelPlacement.onTicks,
        axisLine: AxisLine(width: 0),
        majorGridLines: MajorGridLines(width: 0),
        majorTickLines: MajorTickLines(width: 0),
        edgeLabelPlacement: EdgeLabelPlacement.shift,
        plotOffset: 5,
        labelsExtent: 30,
        interval: 3,
        labelStyle: TextStyle(
          color: textColor,
          fontFamily: "Roboto",
          fontSize: 14,
          fontStyle: FontStyle.italic,
          fontWeight: FontWeight.w500,)
      ),
      primaryYAxis: NumericAxis(
        numberFormat: NumberFormat.compactCurrency(
          symbol: ''
        ),
        axisLine: AxisLine(width: 0),
        plotOffset: 5,
        majorGridLines: MajorGridLines(width: 0),
        majorTickLines: MajorTickLines(width: 0),
        borderColor: Colors.black,
        borderWidth: 0,
        labelStyle: TextStyle(
          color: textColor,
          fontFamily: "Roboto",
          fontSize: 14,
          fontStyle: FontStyle.italic,
          fontWeight: FontWeight.w500,),
          minimum: 0,
          maximum: 2500,
          interval: 500
      ),
      
      series: <ChartSeries<ChartAreaData,String>>[
        SplineAreaSeries(
          
          dataSource: chartData,
          xValueMapper: (ChartAreaData data,_)=> data.month,
          yValueMapper: (ChartAreaData data,_)=> data.amount,

          gradient: LinearGradient(colors: [
            splineColor,
            secondaryColor.withAlpha(150)
          ],
           begin: Alignment.topCenter,
           end: Alignment.bottomCenter
          ) ),
          SplineSeries(

            markerSettings: MarkerSettings(
              isVisible: true,
              color: primaryColor,
              borderColor: Colors.white,
            ),

            dataLabelSettings: DataLabelSettings(
              isVisible: true,
              labelAlignment: ChartDataLabelAlignment.top
            ),
            
            color: splineColor,
            width: 2,
            dataSource: chartData,
           xValueMapper: (ChartAreaData data,_)=> data.month, 
           yValueMapper: (ChartAreaData data,_)=> data.amount,)
      ],
    );
  }
}

class ChartAreaData {
   final String month;
  final double amount;

  ChartAreaData(this.month,  this.amount);
}





final List<ChartAreaData> chartData = <ChartAreaData>[
   ChartAreaData("sept",600),
   ChartAreaData("2sept",1300),
   ChartAreaData("3sept",400),
   ChartAreaData("Oct",900),
   ChartAreaData("30Oct",1000),
   ChartAreaData("Nov",900),
   ChartAreaData("2Nov",2300),
   ChartAreaData("3Nov",1500),
   ChartAreaData("Dec",1800),
   ChartAreaData("2Dec",1500),
   ChartAreaData("3Dec",1600),
   ChartAreaData("Jan",1000),
   ChartAreaData("2Jan",1400),
   ChartAreaData("3Jan",1200),
   ChartAreaData("Feb",1300),
   ChartAreaData("2Feb",1200),
   ChartAreaData("3Feb",1500),
];