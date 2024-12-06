import 'package:flutter/material.dart';
import 'package:pr4_departure/main.dart';
import 'package:pr4_departure/screens/home_page/provider/home_provider.dart';
import 'package:pr4_departure/screens/show_verse_page/model/show_verse_model.dart';
import 'package:pr4_departure/screens/show_verse_page/views/show_verse_page.dart';
import 'package:pr4_departure/utils/extension/app_extensions.dart';
import 'package:provider/provider.dart';

class VersePageview extends StatefulWidget {
  const VersePageview({super.key});

  @override
  State<VersePageview> createState() => _VersePageviewState();
}

class _VersePageviewState extends State<VersePageview> {
  late HomeProvider hRead, hWatch;
  @override
  Widget build(BuildContext context) {
    // ShowVerseModel model =
    //     ModalRoute.of(context)!.settings.arguments as ShowVerseModel;
    hRead = context.read<HomeProvider>();
    hWatch = context.watch<HomeProvider>();
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Verse PageView"),
        // log('')
      ),
      body: PageView.builder(
        // controller: PageController(initialPage: hWatch.verseIndex),
        itemCount: hWatch.chapterWiseVerseList.length,
        scrollDirection: Axis.horizontal,
        // onPageChanged: (value) {
        //   hWatch.changeVerseIndex(value);
        // },
        itemBuilder: (context, index) {
          return Stack(
            alignment: Alignment.center,

            // fit: StackFit.expand,
            children: [
              Container(
                height: double.infinity,
                width: double.infinity,
                // padding: EdgeInsets.all(16),
                child: Image.asset(
                  '${hWatch.gitaChapter[hWatch.verseIndex].imageUrl}',
                  height: double.infinity,
                  fit: BoxFit.cover,
                  colorBlendMode: BlendMode.lighten,
                  color: Colors.white.withOpacity(0.4),
                ),
              ),
              Container(
                height: size.height * 0.5,
                width: size.width * 0.85,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    Text(
                      "${hWatch.verseList[index].title}",
                      style: TextStyle(fontSize: 20),
                    ),
                    25.h,
                    hWatch.languageIndex == 0
                        ? Text(
                            "${hWatch.verseList[index].engVerseText}",
                            style: TextStyle(fontSize: 18),
                            textAlign: TextAlign.center,
                          )
                        : Text(
                            "${hWatch.verseList[index].verseText}",
                            style: TextStyle(fontSize: 17),
                          ),
                    Spacer(),
                    IconButton(
                      onPressed: () {
                        hRead.speakText(
                            "${hWatch.verseList[index].engVerseText}");
                      },
                      icon: Icon(Icons.volume_up_rounded),
                    ),
                  ],
                ),
              ),
              // Text("${index + 1}\n${hWatch.verseList[index].engVerseText}"),
              // Text("${model.verseText}"),
            ],
          );
        },
      ),
    );
  }
}
