import 'package:flutter/material.dart';
import 'package:flutter_app_ui_designs/constants.dart';
import 'package:flutter_app_ui_designs/models/statistics.dart';
import 'package:flutter_app_ui_designs/screen/chart_ring.dart';
import 'package:flutter_app_ui_designs/screen/home.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:syncfusion_flutter_charts/charts.dart';




class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings>with TickerProviderStateMixin {

  late TabController _tabController;
  late TabController _tabController2;
  late TabController _tabController3;

  final _tabs = [
    Tab(text: "Electricity"),
    Tab(text: "Water"),
  ];

  final tabs2 = [
      Tab(text: '24 hours'),
      Tab(text: '1 hours'),
      Tab(text: '1 hours'),
  ];
  

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 4,vsync:this);
    _tabController2 = TabController(length: 2,vsync:this);
    _tabController3 = TabController(length: 3,vsync:this);
    _tabController.index = 2;
  }
  
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(child: Container(
         padding:EdgeInsets.all(defaultPadding),
        child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           Text("Settings",style: GoogleFonts.ubuntu(
               color: Colors.black,
               fontSize: 30,
               fontWeight: FontWeight.w600
           ),),
          const SizedBox(
            height: defaultPadding,
           ),
           Row(
            children: [
              Icon(Icons.arrow_back_ios_new_outlined,
               color: Colors.black,
               size: 20,
              ),

              SizedBox(
                width: defaultPadding,
              ),
              Text("Statistics",
              style: GoogleFonts.ubuntu(
                color: Colors.black,
                fontSize: 30,
                fontWeight: FontWeight.w400
              ),)
              
            ],
           ),

         const SizedBox(height: defaultPadding),
           TabBar(
              controller: _tabController2,
              tabs: _tabs,
              labelColor: secondaryColor,
              indicatorColor: secondaryColor,
              labelStyle: TextStyle(fontSize: 18),
              unselectedLabelColor: Colors.black,
           ),
         const SizedBox(height: defaultPadding),

         Container(
          decoration: BoxDecoration(
            border: Border.all(width: 1,color: secondaryColor.withOpacity(0.4)),
            borderRadius: BorderRadius.circular(80)
          ),
          child:  TabBar(
              controller: _tabController3,
              tabs: tabs2,
              labelColor: secondaryColor,
              labelStyle: TextStyle(fontSize: 18),
              unselectedLabelColor: Colors.black,
              indicator:BoxDecoration(
                color: secondaryColor.withOpacity(0.2),
                border: Border.all(width: 1,color: secondaryColor),
                borderRadius: BorderRadius.circular(80)
          ) ,
           ),
         ),
         SizedBox(
          height: defaultPadding,
         ),
         Expanded(child: chartRing()),
          SizedBox(
            height: defaultPadding,
         ),
         Expanded(child: ListView.builder(
          itemCount: demoHomeStatistics.length,
          itemBuilder: (context, index) {
              return rowlist(demoHomeStatistics[index]);
         },),)
           
          ],
        ),
      )),


      bottomNavigationBar: Container(
        height: 50,
        color: bgColor,
        padding: EdgeInsets.all(10),
        child: TabBar(
          onTap: (value) {
            if(value == 0){
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => Home(),));
            }
          },
          labelColor: secondaryColor,
          unselectedLabelColor: Colors.green.shade400,
          controller: _tabController,
          indicator: UnderlineTabIndicator(borderSide: BorderSide.none),
          tabs: [
            ImageIcon(AssetImage("assets/icons/home.png"),size:35),
            ImageIcon(AssetImage("assets/icons/search.png"),size: 35,),
            ImageIcon(AssetImage("assets/icons/dashboard.png"),size: 35,),
            ImageIcon(AssetImage("assets/icons/account.png"),size: 35,),
          ],
        ),
      ),
      
    );
  }
}



Padding rowlist(HomeStatistics homeStatistics){
  return Padding(
    padding: EdgeInsets.only(bottom: defaultPadding),
   child: Row(
    children: [
      Container(
        height:15,
        width: 15,
         decoration: BoxDecoration(
          shape: BoxShape.circle,color: homeStatistics.color
         ),
        ),
        SizedBox(
          width: defaultPadding / 2,
        ),
        Expanded(child: Text(homeStatistics.homeInterior,
         style: GoogleFonts.ubuntu(color: Colors.black),
        )),
        SizedBox(
          height: defaultPadding /2,
        ),
        Text(homeStatistics.electricity,
         style: GoogleFonts.ubuntu(color: Colors.black),
        
        )
    ],)
  );
}