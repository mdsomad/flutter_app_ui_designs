
import 'package:flutter/material.dart';
import 'package:flutter_app_ui_designs/Screens/dashboard/components/chart_tota_proyfolio.dart';
import 'package:flutter_app_ui_designs/Screens/dashboard/components/chat.dart';
import 'package:flutter_app_ui_designs/Screens/dashboard/components/digital_currency_details.dart';
import 'package:flutter_app_ui_designs/Screens/dashboard/components/hearder.dart';
import 'package:flutter_app_ui_designs/Screens/dashboard/components/recent_transactions.dart';
import 'package:flutter_app_ui_designs/constants.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            flex: 4,
            child: Container(
              padding: EdgeInsets.symmetric(
                  horizontal: defaultPadding * 2, vertical: defaultPadding),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Header(),
                    SizedBox(
                      height: defaultPadding * 2.5,
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.symmetric(vertical: defaultPadding),
                      child: Text(
                        "Total Protfolio",
                        style: Theme.of(context).textTheme.headline6!.copyWith(
                            color: secondaryColor, fontWeight: FontWeight.bold),
                      ),
                    ),
                    ChartTotalProtfolio(),
                    SizedBox(
                      height: defaultPadding * 2,
                    ),
                    RecentTransactions(),
                  ]),
            )),
        Expanded(
            flex: 2,
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Total Balance",
                    style: Theme.of(context).textTheme.headline6!.copyWith(
                        color: secondaryColor, fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: [
                      Text(
                        "USD Balance",
                        style: Theme.of(context)
                            .textTheme
                            .headline6!
                            .copyWith(color: textColor, fontSize: 10),
                      ),
                      Icon(
                        Icons.expand_more,
                        color: secondaryColor,
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "1.445.00",
                        style: Theme.of(context).textTheme.headline6!.copyWith(
                            color: secondaryColor, fontWeight: FontWeight.bold),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: defaultPadding),
                        child: Text(
                          "USD",
                          style: Theme.of(context)
                              .textTheme
                              .headline6!
                              .copyWith(
                                  color: primaryColor,
                                  fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        top: defaultPadding / 2, bottom: defaultPadding),
                    child: Text(
                      "Wallet ID: 2QVTCCOLIHGF",
                      style: Theme.of(context)
                          .textTheme
                          .headline6!
                          .copyWith(color: textColor, fontSize: 10),
                    ),
                  ),
                  Row(
                    children: [
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: secondaryColor,
                              padding: EdgeInsets.symmetric(
                                  horizontal: defaultPadding)),
                          onPressed: () {},
                          child: Text(
                            "Desposit",
                            style: Theme.of(context)
                                .textTheme
                                .subtitle2!
                                .copyWith(color: Colors.white, fontSize: 10),
                          )),
                      SizedBox(
                        width: defaultPadding,
                      ),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: secondarybgColor,
                              padding: EdgeInsets.symmetric(
                                  horizontal: defaultPadding)),
                          onPressed: () {},
                          child: Text(
                            "Desposit",
                            style: Theme.of(context)
                                .textTheme
                                .subtitle2!
                                .copyWith(color: textColor, fontSize: 10),
                          ))
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: defaultPadding * 3, bottom: defaultPadding),
                    child: Text(
                      "My Portfolio",
                      style: Theme.of(context).textTheme.headline6!.copyWith(
                          color: secondaryColor, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(
                        horizontal: defaultPadding, vertical: defaultPadding),
                    decoration: BoxDecoration(
                      color: secondarybgColor,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: Column(
                      children: [Chart(), DigitalCurrencyDetails()],
                    ),
                  )
                ],
              ),
            ))
      ],
    );
  }
}
