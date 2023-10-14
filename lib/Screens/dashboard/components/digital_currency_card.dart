import 'package:flutter/material.dart';
import 'package:flutter_app_ui_designs/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DigitalCurrencyCard extends StatelessWidget {
  const DigitalCurrencyCard({
    super.key,
    required this.svgSrc,
    required this.subNameCurrecy,
    required this.nameCurrecy,
    required this.amountInDollars,
    required this.percentage,
    required this.color,
    required this.icon,
    required this.preColor,
  });
  final String svgSrc, subNameCurrecy, nameCurrecy, amountInDollars, percentage;
  final Color color, preColor;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(children: [
        SizedBox(
            width: 30,
            height: 30,
            child: SvgPicture.asset(
              svgSrc,
              color: color,
            )),
        SizedBox(
          width: defaultPadding / 2,
        ),
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              subNameCurrecy,
              style: Theme.of(context).textTheme.headline3!.copyWith(
                  color: secondaryColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 10),
            ),
            Text(
              nameCurrecy,
              style: Theme.of(context).textTheme.subtitle2!.copyWith(
                  color: textColor, fontWeight: FontWeight.bold, fontSize: 10),
            )
          ],
        )),
        Column(
          children: [
            Text(
              amountInDollars,
              style: Theme.of(context).textTheme.headline3!.copyWith(
                  color: secondaryColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 10),
            ),
            Row(
              children: [
                Icon(
                  icon,
                  color: preColor,
                ),
                Text(percentage,
                    style: Theme.of(context).textTheme.headline2!.copyWith(
                        color: Colors.redAccent,
                        fontWeight: FontWeight.bold,
                        fontSize: 10)),
              ],
            )
          ],
        )
      ]),
    );
  }
}
