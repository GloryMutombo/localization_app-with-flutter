import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'demo_locali.dart';
import 'demo_localization.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateTitle: (BuildContext context) =>
          DemoLocalizations.of(context).home_page,
      localizationsDelegates: const [
        DemoLocalizationsDelegate(),
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en', ''),
        Locale('fr', ''),

      ],
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    bool useVerticalLayout = screenSize.width < screenSize.height;
    //Hide an optional element if the screen gets small.
    bool hideDetailPanel = screenSize.shortestSide < 250;
    return Scaffold(
      appBar: AppBar(
        title: Text(DemoLocalizations.of(context).home_page),
      ),
      drawer: Drawer(),
      body: Flex(
          direction: useVerticalLayout ? Axis.vertical : Axis.horizontal,
          children: [
            if (hideDetailPanel == false) ...[
              Flexible(
                child: Container(
                  alignment: Alignment.center,
                  color: Colors.white,
                  child: Text(
                    DemoLocalizations.of(context).personal_information,
                    style: TextStyle(fontSize: 25),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
            Flexible(
              flex: 5,
              child: Center(
                child: ConstrainedBox(
                  constraints: BoxConstraints(maxWidth: 450),
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(children: [
                        TextFormField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: DemoLocalizations.of(context).name,
                            hintText: DemoLocalizations.of(context).name_hint,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: DemoLocalizations.of(context).email,
                            hintText: DemoLocalizations.of(context).email_hint,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              // labelText: DemoLocalizations.of(context).email,
                              hintText: DemoLocalizations.of(context).password),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            DemoLocalizations.of(context).submit_info,
                            style: TextStyle(color: Colors.white),
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.blue,
                            shape: StadiumBorder(),
                            elevation: 2.0,
                          ),
                        ),
                      ]),
                    ),
                  ),
                ),
              ),
            ),
          ]),
    );
  }
}
