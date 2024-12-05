import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:pr4_departure/screens/home_page/model/gita_chapter_model.dart';
import 'package:pr4_departure/screens/show_verse_page/model/show_verse_model.dart';

class GitaHelper {
  Future<List<GitaChapterModel>> gitaChapters() async {
    String jsonString =
        await rootBundle.loadString('assets/json/gita_chapter.json');

    List jsonList = jsonDecode(jsonString);

    List<GitaChapterModel> gitaChapters = jsonList
        .map(
          (e) => GitaChapterModel.mapToModel(e),
        )
        .toList();

    return gitaChapters;
  }

  Future<List<ShowVerseModel>> getGitaVerse() async {
    String jsonString =
        await rootBundle.loadString('assets/json/gita_verse.json');
    List jsonList = jsonDecode(jsonString);

    List<ShowVerseModel> verseList = jsonList
        .map(
          (e) => ShowVerseModel.mapToModel(e),
        )
        .toList();

    return verseList;
  }
}
