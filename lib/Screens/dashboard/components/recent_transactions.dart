

import 'package:flutter/material.dart';
import 'package:flutter_app_ui_designs/constants.dart';

class RecentTransactions extends StatelessWidget {
  const RecentTransactions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: defaultPadding),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
               Text("Recent Transactions", style: Theme.of(context).textTheme.headline6!.copyWith(
                color: secondaryColor,
                fontWeight: FontWeight.bold
               )),
    
               ElevatedButton(
    
                style: ElevatedButton.styleFrom(
                  primary: secondaryColor,
                padding: EdgeInsets.symmetric(horizontal: defaultPadding)
                ),
                
                onPressed: (){}, child: Text("View All",
                style: Theme.of(context).textTheme.headline2!.copyWith(
                color: Colors.white,
                 fontSize: 10
               )
               ))
               
            ],
          ),
        

           SizedBox(
      width: double.infinity,
      child: DataTable(columns: [
        DataColumn(label: Text("Operation", style: Theme.of(context).textTheme.subtitle2!.copyWith(
          color: textColor,fontSize: 10
        ))),
        DataColumn(label: Text("Date", style: Theme.of(context).textTheme.subtitle2!.copyWith(
          color: textColor,fontSize: 10
        ))),
        DataColumn(label: Text("Amount", style: Theme.of(context).textTheme.subtitle2!.copyWith(
          color: textColor,fontSize: 10
        ))),
        DataColumn(label: Text("Status", style: Theme.of(context).textTheme.subtitle2!.copyWith(
          color: textColor,fontSize: 10
        ))),
      ], rows: [
        DataRow(cells: [
          DataCell(
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Withdraw", style: TextStyle(
                color: secondaryColor,
                fontSize: 10,
                fontWeight: FontWeight.bold
              )),
              Text("Hash: 211111654979874", style: TextStyle(
                color: textColor,
                fontSize: 10,
                fontWeight: FontWeight.bold
              )),
            ],
          )),
          DataCell(Text("Feb 17,2023", style: TextStyle(
                color: secondaryColor,
                fontSize: 10,
                fontWeight: FontWeight.bold
              )),),
          DataCell(Text("\$50,00.00", style: TextStyle(
                color: secondaryColor,
                fontSize: 10,
                fontWeight: FontWeight.bold
              )),),
          DataCell(Text("Completed", style: TextStyle(
                color: Colors.greenAccent,
                fontSize: 10,
                fontWeight: FontWeight.bold
              )),)
        ])
      ]),
    )



        ],
      ),
    );
  }
}
