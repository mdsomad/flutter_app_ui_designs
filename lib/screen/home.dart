import 'package:flutter/material.dart';
import 'package:flutter_app_ui_designs/constants.dart';
import 'package:flutter_app_ui_designs/models/devices.dart';
import 'package:flutter_app_ui_designs/models/home_interior.dart';
import 'package:flutter_app_ui_designs/screen/home_details.dart';
import 'package:flutter_app_ui_designs/screen/settings.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with TickerProviderStateMixin{

  final PageController _pageController = new PageController(initialPage: 0);
  
  late TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 4,vsync:this);
  }
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: defaultPadding *1.5,
              vertical: defaultPadding *2
            ),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    "Hello Somad!",
                    style: GoogleFonts.ubuntu(
                        color: Colors.black,
                        fontSize: 22,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                Icon(
                  Icons.settings_outlined,
                  color: Colors.black,
                  size: 30,
                ),
                const SizedBox(
                  width: defaultPadding,
                ),
                Icon(
                  Icons.notifications_outlined,
                  color: Colors.black,
                  size: 30,
                ),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: defaultPadding *1.5),
            child: SizedBox(
              height: 200,
              width: double.infinity,
              child: ListView.builder(
                controller: _pageController,
                scrollDirection: Axis.horizontal,
                itemCount: demoHomeInterior.length,
                itemBuilder:(context, index) {
                   return homeCard(demoHomeInterior[index],context);
              },),
            ),
          ), 
          const SizedBox(height: defaultPadding,),
          Center(
            child:SmoothPageIndicator(controller: _pageController,
             count: 3,
             effect: WormEffect(
              dotColor: Colors.grey.withOpacity(0.3),
              activeDotColor: secondaryColor,
              dotHeight: 10,
              dotWidth: 10,
              spacing: 5
             ),
            ) ,
          ),

           Padding(
             padding: const EdgeInsets.symmetric(horizontal: defaultPadding*1.5,vertical: defaultPadding      ),
             child: Text(
              "My devices",
              style: GoogleFonts.ubuntu(
                  color: Colors.black, fontSize: 22, fontWeight: FontWeight.w400),
                     ),
           ),

           Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: defaultPadding*1.5,
                 vertical: defaultPadding
                ),
                child: GridView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: demoHomeDevices.length,
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            mainAxisExtent: MediaQuery.of(context).size.width / 2 - 36,
                  crossAxisCount: 2, crossAxisSpacing: 15, mainAxisSpacing: 20),
                          itemBuilder: (context, index) {
                return devicesCard(demoHomeDevices[index]);
                          },
                        ),
              ))
          
        ],
      )),

      bottomNavigationBar: Container(
        height: 50,
        color: bgColor,
        padding: EdgeInsets.all(10),
        child: TabBar(
          onTap: (value) {
            if(value == 2){
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => Settings(),));
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


Container devicesCard(HomeDevices homeDevices){
  return Container(
          padding: EdgeInsets.all(defaultPadding*1),
            decoration: BoxDecoration(
              color: primaryColor,
              borderRadius: BorderRadius.circular(33)
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 100,
                  width: 100,
                  child: Image.asset(
                    homeDevices.image,
                    fit: BoxFit.cover,
                  ),
                ),
               const SizedBox(
                  height: defaultPadding /2,
                ),
                FittedBox(
                  child: Text(homeDevices.title,
                  style: GoogleFonts.ubuntu(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w800),
                  
                  ),
                ),
                  const SizedBox(
                  height: defaultPadding /4,
                ),
                FittedBox(
                  child: Text(homeDevices.subTitel,
                  style: GoogleFonts.ubuntu(
                        color: Colors.black38,
                        fontSize: 10,
                        fontWeight: FontWeight.w400),
                  
                  ),
                )
              ],
            ),
        );
}




Padding homeCard(HomeInterior homeInterior,BuildContext context) {
  return Padding(
        padding: const EdgeInsets.only(left: defaultPadding),
        child: Stack(
          alignment: Alignment.bottomCenter,
        children: [
          InkWell(
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => HomeDatails(
                title: homeInterior.title,
                images: homeInterior.image, 
                humidifier: homeInterior.humidifier, 
                airPurrifier: homeInterior.airPurrifier, 
                boolHumidifier: homeInterior.boolHumidifier, 
                boolAirPurrifier: homeInterior.boolAirPurrifier, 
                floorlamp: homeInterior.floorlamp, 
                mainLight: homeInterior.mainLight)));
            },
            child: ClipRRect(
              borderRadius: BorderRadius.circular(22),
              child: Image.asset(homeInterior.image,
                fit: BoxFit.cover,
                height: 200,
                width: 200,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: defaultPadding),
            child: Text(homeInterior.title,
                style: GoogleFonts.ubuntu(
                color: Colors.white,
                fontSize: 22,
                fontWeight: FontWeight.w600),
            ),
          )
        ],
        ),
      );
}
