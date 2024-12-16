import 'dart:convert';

import 'package:flutter_book_search_app/data/model/book.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('book model test', () {
    String dummydate = """
{
"title": "Harry",
     "link": "https://search.shopping.naver.com/book/catalog/32534728678",
     "image": "https://shopping-phinf.pstatic.net/main_3253472/32534728678.20220523045017.jpg",
     "author": "",
     "discount": "65140",
    "publisher": "Authorhouse",
    "pubdate": "20181108",
     "isbn": "9781546292463",
    "description": "Set in the 1980s, Harry is a young girl who, overnight, turned from a chrysalis into a butterfly. Harry finds love and fame whilst on a family holiday in Spain."
   }
""";
    Map<String, dynamic> map = jsonDecode(dummydate);
    Book book = Book.fromJson(map);
    expect(book.discount, 18500);
    print(book.toJson());
  });
}
