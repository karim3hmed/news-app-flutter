import 'package:flutter/material.dart';
import 'package:news_app/Screens/General_news.dart';

import 'package:news_app/widgets/card_list_view.dart';
import 'package:news_app/widgets/list_view_news.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    super.key,
    required this.isdark,
    required this.onthemechange,
  });
  final bool isdark;
  final Function(bool) onthemechange;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isloading = true;

  @override
  // void initState() {
  //   getnews();
  //   super.initState();
  // }
  // Future<void> getnews() async {
  //   articles = await NewsService().getnews();
  //   setState(() {
  //     isloading = false;
  //   });
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            DrawerHeader(child: Text('Menu', style: TextStyle(fontSize: 24))),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: () {},
            ),
            SwitchListTile(
              title: Text("theme mode"),
              secondary: Icon(
                widget.isdark ? Icons.dark_mode : Icons.light_mode,
              ),
              value: widget.isdark,
              onChanged: (value) {
                widget.onthemechange(value);
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.public, size: 25),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.newspaper, size: 25),
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Breaking News",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          CardListView(),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "General News ",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return GeneralNews();
                        },
                      ),
                    );
                  },
                  child: Text(
                    "View all ",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                    ),
                  ),
                ),
              ],
            ),
          ),
          ListViewNews(),
        ],
      ),
    );
  }
}
  // Expanded(
  //           child: ListView.builder(
  //             itemCount: articles.length,
  //             itemBuilder: (context, index) {
  //               return NewsCategory(articleModel: articles[index]);
  //             },
  //           ),
  //         ),
