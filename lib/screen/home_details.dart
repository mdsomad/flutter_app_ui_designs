import 'package:flutter/material.dart';
import 'package:flutter_app_ui_designs/constants.dart';
import 'package:flutter_app_ui_designs/screen/home.dart';
import 'package:getwidget/components/toggle/gf_toggle.dart';
import 'package:getwidget/getwidget.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:syncfusion_flutter_core/theme.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';



class HomeDatails extends StatefulWidget {
  const HomeDatails({super.key, required this.title, required this.images, required this.humidifier, required this.airPurrifier, required this.boolHumidifier, required this.boolAirPurrifier, required this.floorlamp, required this.mainLight});
  final String title, images,humidifier,airPurrifier;
  final bool boolHumidifier,boolAirPurrifier;
  final double floorlamp,mainLight;


  @override
  State<HomeDatails> createState() => _HomeDatailsState();
}

class _HomeDatailsState extends State<HomeDatails>with TickerProviderStateMixin {


  late double _value = widget.mainLight;
  late double _value2 = widget.floorlamp;
  late TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 4,vsync:this);
    // _tabController.index = 2;
  }
  
  
  
  
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
       body: SafeArea(
        child: SingleChildScrollView(
          physics: NeverScrollableScrollPhysics(),
          child: Stack(
            children: [
              Column(
                children: [
                  Image.asset(
                    widget.images,
                    fit: BoxFit.cover,
                    width: double.infinity,
                    height: height/2,
                  ),
                  Container(
                    height: height/2,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: bgColor,
                      boxShadow: [
                        BoxShadow(
                          color: bgColor,
                          blurRadius: 20,
                          spreadRadius: 20,
                          offset: Offset(5, 0)
                        )
                      ]
                    ),
                  )
                ],
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: defaultPadding *1.5,
                 vertical: defaultPadding
                ),
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.3),
                            blurRadius: 100,
                            spreadRadius: 100,
                            offset: Offset(5, 0)
                          )
                        ],
                        
                      ),
                      child: Row(children: [
                        InkWell(
                          onTap: (){
                            Navigator.of(context).push(MaterialPageRoute(builder: (context) => Home(),));
                          },
                          child: Icon(Icons.arrow_back_ios_new_outlined,size: 30,)),
                        Expanded(child: Center(
                          child: Text(
                            widget.title,
                            style: GoogleFonts.ubuntu(fontSize: 22),
                          ),
                        )),
                        Icon(Icons.notifications_outlined,
                          size: 30,
                        )
                        
                      ],),
                    ),

                    SizedBox(
                      height: height /2 -120,
                    ),
                    Row(
                      children: [
                        Expanded(child: Container(
                          height: 200,
                          padding: EdgeInsets.all(defaultPadding),
                          decoration: BoxDecoration(
                            color: primaryColor,
                            borderRadius: BorderRadius.circular(33)
                          ),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(widget.humidifier,
                                   style: GoogleFonts.ubuntu(
                                    color: Colors.black,
                                    fontSize: 30,
                                    fontWeight: FontWeight.w600
                                   ),
                                  ),
                                  SizedBox(
                                    height: 40,
                                    width: 40,
                                    child: Image.asset("assets/icons/humidity.png"),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: defaultPadding,
                              ),

                              Expanded(child: Text('Humidifier air',
                                style: GoogleFonts.ubuntu(
                                  color: Colors.black54,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400
                                ),
                              )),
                              SizedBox(
                                height: defaultPadding *2,
                              ),
                              Container(
                                height: 1,
                                width: double.infinity,
                                color: Colors.black12,
                              ),
                              SizedBox(
                                height: defaultPadding*2,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Mode",
                                    style: GoogleFonts.ubuntu(
                                      color: Colors.black54,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w400
                                    ),
                                  ),
                                  GFToggle(onChanged: (bool? value){

                                  }, 
                                   value:widget.boolHumidifier,
                                   enabledTrackColor: secondaryColor, 
                                   enabledThumbColor: primaryColor,
                                   type: GFToggleType.ios,
                                  )
                                ],
                              )

                            ],
                          ),
                        )),
                        SizedBox(
                          width: defaultPadding,
                        ),
                        Expanded(child:  Container(
                            height: 200,
                            padding: EdgeInsets.all(defaultPadding),
                            decoration: BoxDecoration(
                              color: primaryColor,
                              borderRadius: BorderRadius.circular(33)
                            ),
                            child: Column(
                              children: [
                                    Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(widget.airPurrifier,
                                     style: GoogleFonts.ubuntu(
                                      color: Colors.black,
                                      fontSize: 30,
                                      fontWeight: FontWeight.w600
                                     ),
                                    ),
                                    SizedBox(
                                      height: 40,
                                      width: 40,
                                      child: Image.asset("assets/icons/wind.png"),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: defaultPadding,
                                ),

                                Expanded(child: Text('Air purifier',
                                  style: GoogleFonts.ubuntu(
                                    color: Colors.black54,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w400
                                  ),
                                )),
                                SizedBox(
                                  // height: defaultPadding /2,
                                ),
                                Container(
                                  height: 1,
                                  width: double.infinity,
                                  color: Colors.black12,
                                ),
                                SizedBox(
                                  height: defaultPadding*2,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Mode",
                                      style: GoogleFonts.ubuntu(
                                        color: Colors.black54,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w400
                                      ),
                                    ),
                                    GFToggle(onChanged: (bool? value){

                                    }, 
                                     value:widget.boolAirPurrifier,
                                     enabledTrackColor: secondaryColor, 
                                     enabledThumbColor: primaryColor,
                                     type: GFToggleType.ios,
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: defaultPadding,
                    ),
                    Container(
                      height: 180,
                      width: double.infinity,
                      padding: EdgeInsets.only(
                       top: defaultPadding,
                       right: defaultPadding ,
                       bottom: defaultPadding
                      ),
                      decoration: BoxDecoration(
                        color: primaryColor,
                        borderRadius: BorderRadius.circular(33)
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                            Padding(
                              padding: const EdgeInsets.only(left: defaultPadding),
                              child: Text("main light",
                               style: GoogleFonts.ubuntu(
                                 color: Colors.black54,
                                 fontSize: 15,
                                 fontWeight: FontWeight.w400
                               ),
                              ),
                            ),
                            Row(children: [
                                Expanded(child: SfSliderTheme(
                                  data: SfSliderThemeData(
                                    activeTickColor: secondaryColor,
                                    activeTrackHeight: 10,
                                    inactiveTrackHeight: 10,
                                    activeDividerRadius: 5,
                                    thumbStrokeWidth: 7,
                                    thumbRadius: 15,
                                    inactiveTickColor: bgColor,
                                    thumbColor: bgColor,
                                    thumbStrokeColor: secondaryColor
                                  ),
                                  child: SfSlider(
                                    min: 0,
                                    max: 100,
                                    value: _value2, 
                                  onChanged: (value) {
                                     setState(() {
                                       _value2 = value;
                                     });
                                  },),
                                )),
                                SizedBox(
                                  height: 40,
                                  width: 40,
                                  child: Image.asset('assets/icons/table-lamp.png'),
                                )
                            ],),
                            Spacer(),
                              Padding(
                                padding: const EdgeInsets.only(left: defaultPadding),
                                child: Text("Floor lamp",
                                                           style: GoogleFonts.ubuntu(
                                 color: Colors.black54,
                                 fontSize: 15,
                                 fontWeight: FontWeight.w400
                                                           ),
                                                          ),
                              ),
                             Row(children: [
                                Expanded(child: SfSliderTheme(
                                  data: SfSliderThemeData(
                                    activeTickColor: secondaryColor,
                                    activeTrackHeight: 10,
                                    inactiveTrackHeight: 10,
                                    activeDividerRadius: 5,
                                    thumbStrokeWidth: 7,
                                    thumbRadius: 15,
                                    inactiveTickColor: bgColor,
                                    thumbColor: bgColor,
                                    thumbStrokeColor: secondaryColor
                                  ),
                                  child: SfSlider(
                                    min: 0,
                                    max: 100,
                                    value: _value, 
                                  onChanged: (value) {
                                     setState(() {
                                       _value = value;
                                     });
                                  },),
                                )),
                                SizedBox(
                                  height: 40,
                                  width: 40,
                                  child: Image.asset('assets/icons/ceiling-lamp.png'),
                                )
                            ],)
                        ],
                      ),
                    ),

                    
                    
                  ],
                ),
              )
              
            ],
          ),
        )
        ),


        bottomNavigationBar: Container(
        height: 50,
        color: bgColor,
        padding: EdgeInsets.all(10),
        child: TabBar(
          onTap: (value) {
            // if(value == 0){
            //   Navigator.of(context).push(MaterialPageRoute(builder:(context) => Home(),));
            // }
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