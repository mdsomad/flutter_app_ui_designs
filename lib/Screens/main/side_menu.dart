import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_app_ui_designs/constants.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    super.key,
    required this.height,
  });

  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      padding: EdgeInsets.symmetric(
          horizontal: defaultPadding, vertical: defaultPadding * 3),
      decoration: BoxDecoration(
          color: secondaryColor, borderRadius: BorderRadius.circular(30)),
      child: Column(
        children: [
          SizedBox(
            height: 120,
            child: DrawerHeader(
                padding: EdgeInsets.only(left: defaultPadding * 1.5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Image.asset("assets/images/logop.png"),
                        Text(
                          "Proxibit",
                          style: Theme.of(context).textTheme.headline6,
                        )
                      ],
                    ),
                    Text("Main Menu",
                        style: Theme.of(context)
                            .textTheme
                            .headline2
                            ?.copyWith(color: Colors.white70, fontSize: 10))
                  ],
                )),
          ),
          SizedBox(height: defaultPadding),
          Stack(
            children: [
              Positioned.fill(
                  child: Expanded(
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                      color: primaryColor,
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                ),
              )),
              Container(
                margin: EdgeInsets.only(left: 200, top: 10),
                height: 30,
                width: 5,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(5))),
              ),
              DeshboardListTile(
                title: "Deshboard",
                icon: Icon(Icons.grid_view_outlined),
                press: () {
                  log("Press Deshboard");
                },
              ),
            ],
          ),
          DeshboardListTile(
            title: "Transsactions",
            icon: Icon(Icons.poll_outlined),
            press: () {
              log("Press Deshboard");
            },
          ),
          DeshboardListTile(
            title: "Tranfer",
            icon: Icon(Icons.send),
            press: () {
              log("Press Deshboard");
            },
          ),
          DeshboardListTile(
            title: "Deposit",
            icon: Icon(Icons.add_box_outlined),
            press: () {
              log("Press Deshboard");
            },
          ),
          DeshboardListTile(
            title: "Withdraw",
            icon: Icon(Icons.upload),
            press: () {
              log("Press Deshboard");
            },
          ),
          DeshboardListTile(
            title: "Payment",
            icon: Icon(Icons.account_balance_wallet_outlined),
            press: () {
              log("Press Deshboard");
            },
          ),
          DeshboardListTile(
            title: "Messages",
            icon: Icon(Icons.description_outlined),
            press: () {
              log("Press Deshboard");
            },
          ),
          Spacer(),
          DeshboardListTile(
            title: "Account",
            icon: Icon(Icons.percent),
            press: () {
              log("Press Deshboard");
            },
          ),
          DeshboardListTile(
            title: "Settings",
            icon: Icon(Icons.settings),
            press: () {
              log("Press Deshboard");
            },
          ),
        ],
      ),
    );
  }
}

class DeshboardListTile extends StatelessWidget {
  const DeshboardListTile({
    super.key,
    required this.title,
    required this.icon,
    required this.press,
  });

  final String title;
  final Icon icon;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: ListTile(
        visualDensity: VisualDensity(vertical: -1),
        dense: true,
        onTap: press,
        leading: icon,
        title: Text(title),
      ),
    );
  }
}