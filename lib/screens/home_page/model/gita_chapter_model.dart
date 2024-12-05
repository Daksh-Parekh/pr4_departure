class GitaChapterModel {
  int? id, verseCount;
  String? hindiName, engName;

  GitaChapterModel({this.id, this.hindiName, this.engName, this.verseCount});

  factory GitaChapterModel.mapToModel(Map map) {
    return GitaChapterModel(
      id: map['chapter_number'],
      hindiName: map['name'],
      engName: map['name_translation'],
      verseCount: map['verses_count'],
    );
  }
}
