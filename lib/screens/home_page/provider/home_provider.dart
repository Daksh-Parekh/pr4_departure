import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:pr4_departure/screens/home_page/model/gita_chapter_model.dart';
import 'package:pr4_departure/screens/show_verse_page/model/show_verse_model.dart';
import 'package:pr4_departure/utils/helper/json_helper.dart';

class HomeProvider with ChangeNotifier {
  List<GitaChapterModel> gitaChapter = [];
  int languageIndex = 0;
  Future<void> getGitaChapter() async {
    GitaHelper helper = GitaHelper();
    gitaChapter = await helper.gitaChapters();
    notifyListeners();
  }

  void setLanguageIndex(int inx) {
    languageIndex = inx;
    notifyListeners();
  }

  List<ShowVerseModel> verseList = [];
  Future<void> getVerse() async {
    GitaHelper helper = GitaHelper();
    verseList = await helper.getGitaVerse();
    notifyListeners();
  }

  List chapterWiseVerseList = [];
  void chapterWiseVerse(int verseCount) {
    chapterWiseVerseList = verseList
        .where(
          (element) => element.chapterNo == verseCount,
        )
        .toList();
    log('${verseList.length}');
    notifyListeners();
  }

  int verseIndex = 0;
  void changeVerseIndex(int inx) {
    verseIndex = inx;
    notifyListeners();
  }

  void changeVerseIndexAsVerseNo(int chapterNo) {
    // verseIndex=verseList.map((e) => e.verseNo==chapterNo,).toList();
  }

  FlutterTts flutterTts = FlutterTts();
  bool isPlay = false;

  void speakText(String verseLists) async {
    if (isPlay == true) {
      await flutterTts.speak("${verseLists}");
      // await flutterTts.setPitch(0.9);
      isPlay = false;
    } else {
      await flutterTts.stop();
      isPlay = true;
    }

    // flutterTts.setVoice("cmn-CN-Standard-B");
    notifyListeners();
  }
}
