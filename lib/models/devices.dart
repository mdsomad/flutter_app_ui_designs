
class HomeDevices {
  final String title, image, subTitel;

  HomeDevices({
    required this.image,
    required this.title,
    required this.subTitel,
  });
}

List demoHomeDevices = [
  HomeDevices(
    image: "assets/images/topline.png",
    title: "Top Line 3",
    subTitel: "Humidifier",
  ),
  HomeDevices(
    image: "assets/images/xiaomi.png",
    title: "Xiaomi",
    subTitel: "Robot vacuum cleaner",
  ),
  HomeDevices(
    image: "assets/images/lightstar.png",
    title: "Lightstar",
    subTitel: "Desk lamp",
  ),
  HomeDevices(
    image: "assets/images/alice.png",
    title: "Alice",
    subTitel: "Speaker column",
  ),
  HomeDevices(
    image: "assets/images/bork.png",
    title: "Brok V530",
    subTitel: "Robot vacuum cleaner",
  ),
  HomeDevices(
    image: "assets/images/smartbulb.png",
    title: "Smart Bulb-2",
    subTitel: "Smart light bulb",
  ),
  HomeDevices(
    image: "assets/images/kettle.png",
    title: "Goldair kettle",
    subTitel: "Wifi kettle",
  ),
];
