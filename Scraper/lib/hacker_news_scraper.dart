import 'dart:convert';
import 'package:http/http.dart';
import 'package:html/parser.dart';
import 'package:html/dom.dart';
Future initiate() async {
  // Make API call to Hackernews homepage
  var client = Client();
  Response response = await client.get('https://news.ycombinator.com');
  // Use html parser
  var document = parse(response.body);
  List<Element> links = document.querySelectorAll('td.title > a.storylink');
  List<Map<String, dynamic>> linkMap = [];
  for (var link in links) {
    linkMap.add({
      'title': link.text,
      'href': link.attributes['href'],
    });
  }
  return json.encode(linkMap);
}