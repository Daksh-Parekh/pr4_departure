class ShowVerseModel {
  int? chapterNo, verseNo;
  String? verseText, title, engVerseText, meaning;

  ShowVerseModel(
      {this.chapterNo,
      this.verseNo,
      this.verseText,
      this.engVerseText,
      this.meaning,
      this.title});

  factory ShowVerseModel.mapToModel(Map m1) {
    return ShowVerseModel(
      chapterNo: m1['chapter_number'],
      verseNo: m1['verse_number'],
      verseText: m1['text'],
      engVerseText: m1['transliteration'],
      meaning: m1['word_meanings'],
      title: m1['title'],
    );
  }
}
