import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';


class chartRing extends StatelessWidget {
  const chartRing({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SfCircularChart(

     onDataLabelRender: (DataLabelRenderArgs args){
       args.text = "${args.text}";
     },
     
     series:<CircularSeries> [
       DoughnutSeries<ChartData,String>(
         dataLabelSettings: DataLabelSettings(isVisible: true),
         dataSource: chartData,
         innerRadius: "60%",
         startAngle: 350,
         endAngle: 350,
         pointColorMapper:  (ChartData data,_)=> data.color,
         xValueMapper: (ChartData data,_)=> data.x,
          yValueMapper:  (ChartData data,_)=> data.y,
          )
     ],
     
     );
  }
}



final List<ChartData> chartData = [
   ChartData("Kitchen",28, Color(0xFFFBD3E1)),
   ChartData("Bedroom",7, Color(0xFFFED8B3)),
   ChartData("Leving room",35, Color(0xFFDFD9EF)),
   ChartData("Children's",12, Color(0xFFFFEFFC6)),
   ChartData("Bathroom",18, Color(0xFFCCE6FF)),
];


class ChartData {
  ChartData(this.x, this.y, this.color);
  final String x;
  final double y;
  final Color color;

}