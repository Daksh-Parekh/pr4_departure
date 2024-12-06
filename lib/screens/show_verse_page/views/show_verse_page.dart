import 'package:flutter/material.dart';
import 'package:pr4_departure/main.dart';
import 'package:pr4_departure/screens/home_page/model/gita_chapter_model.dart';
import 'package:pr4_departure/screens/home_page/provider/home_provider.dart';
import 'package:pr4_departure/screens/show_verse_page/model/show_verse_model.dart';
import 'package:pr4_departure/utils/extension/app_extensions.dart';
import 'package:pr4_departure/utils/routes/app_routes.dart';
import 'package:provider/provider.dart';

class ShowVersePage extends StatefulWidget {
  const ShowVersePage({super.key});

  @override
  State<ShowVersePage> createState() => _ShowVersePageState();
}

class _ShowVersePageState extends State<ShowVersePage> {
  late HomeProvider hRead, hWatch;
  // @override
  // void initState() {
  //   // context.read<HomeProvider>().getVerse();
  //   // TODO: implement initState
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    hRead = context.read<HomeProvider>();
    hWatch = context.watch<HomeProvider>();
    GitaChapterModel model =
        ModalRoute.of(context)!.settings.arguments as GitaChapterModel;

    return Scaffold(
      appBar: AppBar(
        title: Text("${model.engName}"),
      ),
      body: Padding(
          padding: EdgeInsets.all(16),
          child: GridView.builder(
            itemCount: hWatch.chapterWiseVerseList.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 0.65,
            ),
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  // hRead.chapterWiseVerse(hWatch.gitaChapter[index].id!);
                  Navigator.pushNamed(
                    context,
                    AppRoutes.versePageView,
                    // arguments: hRead.chapterWiseVerseList[index],
                  );
                },
                child: Card.filled(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Text(
                            "Verse ${hWatch.chapterWiseVerseList[index].verseNo}"),
                        7.h,
                        hWatch.languageIndex == 0
                            ? Text(
                                "${hWatch.chapterWiseVerseList[index].engVerseText}",
                                maxLines: 8,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.center,
                              )
                            : Text(
                                "${hWatch.chapterWiseVerseList[index].verseText}",
                                maxLines: 8,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.center,
                              ),
                      ],
                    ),
                  ),
                ),
              );
              // : null;
            },
          )),
    );
  }
}
