import 'package:flutter/material.dart';
import 'package:Scraper/hacker_news_scraper.dart' as hacker_news_scraper;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  void main(List<String> arguments) async {
    print(await hacker_news_scraper.initiate());
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      
    );
  }

/*   @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  } */
}
