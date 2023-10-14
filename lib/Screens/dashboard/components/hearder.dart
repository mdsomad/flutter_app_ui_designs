import 'package:flutter/material.dart';
import 'package:flutter_app_ui_designs/constants.dart';



class Header extends StatelessWidget {
  const Header({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  bottom: defaultPadding / 2,
                  right: defaultPadding),
              child: Text(
                "Aed Belmekhfi",
                style: Theme.of(context)
                    .textTheme
                    .headline6!
                    .copyWith(
                        color: secondaryColor,
                        fontWeight: FontWeight.bold),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: defaultPadding),
                  child: Text(
                    "Verified",
                    style: Theme.of(context)
                        .textTheme
                        .subtitle2!
                        .copyWith(
                          color: textColor,
                          fontSize: 10,
                        ),
                  ),
                ),
                Icon(
                  Icons.verified_user_outlined,
                  size: defaultPadding,
                  color: Colors.greenAccent,
                )
              ],
            )
          ],
        ),

        ClipOval(
          child: Image.asset("assets/images/person.jpg",
          height: 30,
          width: 30,
          ),
        ),
        Icon(Icons.expand_more,color: secondaryColor),
        Expanded(child:Container(
          padding: EdgeInsets.symmetric(horizontal: defaultPadding),
          height: 50,
          child: TextField(
              decoration: InputDecoration(
                hintText: "Search Transactions...",
                hintStyle: TextStyle(color:textColor,fontSize: 13),
                fillColor: secondarybgColor,
                filled: true,
                border: OutlineInputBorder(
                  borderSide:BorderSide.none,
                  borderRadius: BorderRadius.all(Radius.circular(10),
                  ),
                
                ),
                suffixIcon: InkWell(
                  onTap: (){

                  },
                  child: Container(
                
                    decoration: BoxDecoration(
                      color: secondarybgColor,
                      borderRadius: BorderRadius.all(Radius.circular(10))
                    ),
                    child: Icon(Icons.search,color: textColor,),
                  ),
                )
              ),
          ),
        ))
        
      ],
    );
  }
}