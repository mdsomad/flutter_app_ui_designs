import 'package:flutter/material.dart';
import 'package:flutter_app_ui_designs/Screens/dashboard/components/digital_currency_card.dart';



class DigitalCurrencyDetails extends StatelessWidget {
  const DigitalCurrencyDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        
                   
    DigitalCurrencyCard(
      svgSrc:"assets/icons/btc.svg",
      subNameCurrecy:"BTC" ,
      percentage:"\$32 (2%)" ,
      amountInDollars: "550,25 USD",
      icon: Icons.arrow_drop_down,
      preColor: Colors.redAccent,
      nameCurrecy: "Bitcoin",
      color: Color.fromARGB(255, 209, 133, 18),
    ),
    DigitalCurrencyCard(
      svgSrc:"assets/icons/eth.svg",
      subNameCurrecy:"ETH" ,
      percentage:"\$32 (2%)" ,
      amountInDollars: "445,75 USD",
      icon: Icons.arrow_drop_up,
      preColor: Colors.greenAccent,
      nameCurrecy: "Ethereum",
      color: Color.fromARGB(255,99,104, 144),
    ),
    DigitalCurrencyCard(
      svgSrc:"assets/icons/bnb.svg",
      subNameCurrecy:"BNB" ,
      percentage:"\$20 (1%)" ,
      amountInDollars: "449,00   USD",
      icon: Icons.arrow_drop_up,
      preColor: Colors.green,
      nameCurrecy: "Bitcoin",
      color: Color.fromARGB(255,99,804, 144),
    ),

         ],
    );
  }
}

