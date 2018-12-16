import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:simple_design/simple_design.dart';

final ThemeData theme = SimpleDesign.lightTheme;

void main() {
  runApp(MyApp());
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: theme.backgroundColor.withOpacity(0.2),
      systemNavigationBarColor: theme.scaffoldBackgroundColor,
      systemNavigationBarDividerColor:
          theme.brightness == Brightness.light ? Colors.black : Colors.white,
      systemNavigationBarIconBrightness: theme.brightness == Brightness.light
          ? Brightness.dark
          : Brightness.light,
    ),
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Simple Design',
      color: theme.scaffoldBackgroundColor,
      debugShowCheckedModeBanner: false,
      theme: theme,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  double sliderValue = 0.3;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: 1,
      child: Scaffold(
        body: CustomScrollView(
          slivers: <Widget>[
            SDSliverAppBar(
                pinned: false,
                snap: true,
                floating: true,
                bottom: TabBar(tabs: [
                  Tab(
                    icon: Icon(Icons.slideshow),
                    text: "Slideshow",
                  ),
                  Tab(
                    icon: Icon(Icons.favorite_border),
                    text: "Favorites",
                  ),
                  Tab(
                    icon: Icon(Icons.music_note),
                    text: "Music",
                  ),
                ]),
                title: RichText(
                    text: TextSpan(
                        text: "Simple ",
                        style: Theme.of(context).textTheme.title,
                        children: [
                      TextSpan(
                          text: "Design",
                          style: Theme.of(context)
                              .textTheme
                              .title
                              .copyWith(fontWeight: FontWeight.normal))
                    ]))),
            SliverList(
                delegate: SliverChildListDelegate([
              SDDivider(
                height: 12.0,
              ),
              SDSectionHeader("Dialog and Button"),
              ListTile(
                leading: Icon(Icons.call_to_action),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    FlatButton(onPressed: () {}, child: Text("Flat Button")),
                    SizedBox(
                      width: 8.0,
                    ),
                    FlatButton(
                      color: Theme.of(context).primaryColor,
                      child: Text("Show Dialog"),
                      onPressed: () => showDialog(
                          context: context,
                          builder: (context) => SDDialog(
                                actionButton: SDActionButton(
                                  title: "Get Started",
                                  onPressed: () => Navigator.of(context).pop(),
                                ),
                                dismissButton: SDDismissButton(
                                  onPressed: () => Navigator.of(context).pop(),
                                  title: "Dismiss",
                                ),
                                title: "Welcome to Simple Design!",
                                content: Text(
                                  "With Simple Design we try to make the designing "
                                      "of your apps as simple, yet beautiful as possible, "
                                      "so you can focus on the important aspects of your app!",
                                ),
                              )),
                    ),
                  ],
                ),
              ),
              SDDivider(),
              SDSectionHeader("TextField"),
              ListTile(
                leading: Icon(Icons.text_fields),
                title: TextField(
                  decoration: InputDecoration(hintText: "Put in your username"),
                ),
              ),
              SDDivider(),
              SDSectionHeader("Slider"),
              ListTile(
                leading: Icon(Icons.adjust),
                title: Slider(
                    value: sliderValue,
                    onChanged: (n) {
                      setState(() {
                        sliderValue = n;
                      });
                    }),
              ),
              ListTile(
                leading: Icon(Icons.vertical_align_center),
                title: Slider(
                    divisions: 5,
                    label: (sliderValue * 10).toStringAsFixed(0),
                    value: sliderValue,
                    onChanged: (n) {
                      setState(() {
                        sliderValue = n;
                      });
                    }),
              ),
              ListTile(
                leading: Icon(Icons.location_disabled),
                title: Slider(
                  divisions: 5,
                  value: sliderValue,
                  onChanged: null,
                ),
              ),
              SDDivider(),
              SDSectionHeader("Cards"),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: SDCard(
                  mediaContent: Image.asset(
                    "assets/flower.jpg",
                    fit: BoxFit.cover,
                  ),
                  title: "Our Beautiful Planet",
                  subtitle: "by Manfred Richter",
                  content: Text(
                      "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, "
                      "sed diam nonumy eirmod tempor invidunt ut labore et dolore"
                      " magna aliquyam erat, sed diam voluptua. At"),
                  actions: <Widget>[
                    FlatButton(onPressed: () {}, child: Text("Read")),
                    IconButton(
                      icon: Icon(Icons.star_border),
                      color: theme.brightness == Brightness.light
                          ? Theme.of(context).primaryColor
                          : Theme.of(context).iconTheme.color,
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: Icon(Icons.share),
                      color: theme.brightness == Brightness.light
                          ? Theme.of(context).primaryColor
                          : Theme.of(context).iconTheme.color,
                      onPressed: () {},
                    )
                  ],
                ),
              )
            ]))
          ],
        ),
      ),
    );
  }
}
