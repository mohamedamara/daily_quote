import 'dart:convert';
import 'package:http/http.dart' as http;
import '../model/quote_model.dart';
import 'package:flutter/material.dart';

class AppState with ChangeNotifier {
  String quote, author;
  bool isLoading = true;
  String dummyQuote = "The question of whether computers can think is like the "
      "question of whether submarines can swim .";
  String dummyAuthor = "Edsger W. Dijkstra";

  AppState() {
    fetchQuote();
  }

  fetchQuote() async {
    final response = await http.get("http://quotes.rest/qod.json");
    if (response.statusCode == 200) {
      QuoteModel quotes = QuoteModel.fromJson(json.decode(response.body));
      if (quotes.contents.quotes.first.quote.length <= 100) {
        quote = quotes.contents.quotes.first.quote;
        author = quotes.contents.quotes.first.author;
      } else {
        quote = dummyQuote;
        author = dummyAuthor;
      }
      isLoading = false;
    } else {
      // couldn't fetch data
      quote = dummyQuote;
      author = dummyAuthor;
      isLoading = false;
    }
    notifyListeners();
  }
}
