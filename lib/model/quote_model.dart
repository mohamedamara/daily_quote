class QuoteModel {
  Contents contents;

  QuoteModel({this.contents});

  factory QuoteModel.fromJson(Map<String, dynamic> parsedJson) {
    return QuoteModel(
      contents: Contents.fromJson(parsedJson['contents']),
    );
  }
}

class Contents {
  List<Quotes> quotes;

  Contents({
    this.quotes,
  });

  factory Contents.fromJson(Map<String, dynamic> parsedJson) {
    var list = parsedJson['quotes'] as List;
    List<Quotes> quotesList = list.map((i) => Quotes.fromJson(i)).toList();

    return Contents(
      quotes: quotesList,
    );
  }
}

class Quotes {
  String quote;
  String author;

  Quotes({
    this.quote,
    this.author,
  });

  factory Quotes.fromJson(Map<String, dynamic> parsedJson) {
    return Quotes(
      quote: parsedJson['quote'],
      author: parsedJson['author'],
    );
  }
}
