import 'package:flutter/material.dart';
import 'package:pr4_departure/main.dart';
import 'package:pr4_departure/screens/home_page/provider/home_provider.dart';
import 'package:pr4_departure/screens/show_verse_page/model/show_verse_model.dart';
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
    ShowVerseModel model =
        ModalRoute.of(context)!.settings.arguments as ShowVerseModel;
    hRead = context.read<HomeProvider>();
    hWatch = context.watch<HomeProvider>();
    return Scaffold(
      appBar: AppBar(
        title: Text("Verse PageView"),
        // log('');
      ),
      body: PageView.builder(
        itemCount: hWatch.verseList.length,
        
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Container(
            color: Colors.amber,
        
            child: Text("${index + 1}\n${model.title}"),
          );
        },
      ),
    );
  }
}
