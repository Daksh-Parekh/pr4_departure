import 'package:flutter/material.dart';
import 'package:pr4_departure/main.dart';
import 'package:pr4_departure/screens/home_page/provider/home_provider.dart';
import 'package:pr4_departure/utils/routes/app_routes.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late HomeProvider hRead, hWatch;
  @override
  Widget build(BuildContext context) {
    hRead = context.read<HomeProvider>();
    hWatch = context.watch<HomeProvider>();
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
        actions: [
          PopupMenuButton(
            itemBuilder: (context) => [
              PopupMenuItem(
                value: 0,
                onTap: () {
                  hRead.setLanguageIndex(0);
                },
                child: Text("English"),
              ),
              PopupMenuItem(
                value: 1,
                onTap: () {
                  hRead.setLanguageIndex(1);
                },
                child: Text("Hindi"),
              ),
            ],
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: ListView.builder(
          itemCount: hWatch.gitaChapter.length,
          itemBuilder: (context, index) {
            return ListTile(
              onTap: () {
                hRead.chapterWiseVerse(hWatch.gitaChapter[index].id!);
                Navigator.pushNamed(context, AppRoutes.showVersePage,
                    arguments: hWatch.gitaChapter[index]);
              },
              leading: Text("${hWatch.gitaChapter[index].id}"),
              title: hWatch.languageIndex == 0
                  ? Text("${hWatch.gitaChapter[index].engName}")
                  : Text("${hWatch.gitaChapter[index].hindiName}"),
            );
          },
        ),
      ),
    );
  }
}
