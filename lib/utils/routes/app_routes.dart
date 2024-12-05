import 'package:flutter/material.dart';
import 'package:pr4_departure/screens/home_page/views/home_page.dart';
import 'package:pr4_departure/screens/show_verse_page/views/show_verse_page.dart';
import 'package:pr4_departure/screens/verse_page_view.dart/view/verse_pageview.dart';

class AppRoutes {
  static String homePage = '/';
  static String showVersePage = 'show_verese_page';
  static String versePageView = 'verese_page_view';

  static Map<String, Widget Function(BuildContext)> routes = {
    homePage: (context) => HomePage(),
    showVersePage: (context) => ShowVersePage(),
    versePageView: (context) => VersePageview(),
  };
}
