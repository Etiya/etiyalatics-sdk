import 'dart:math';

import 'package:Etiyalytics_sdk/etiyalatics_sdk.dart';
import 'package:flutter/material.dart';

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
        title: 'Etiyalytics SDK USAGE EXAMPLE',
        theme: ThemeData(
            colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.blue)
                .copyWith(secondary: Colors.orange)),
        home: const InitialScreen());
  }
}

class InitialScreen extends StatefulWidget {
  const InitialScreen({Key? key}) : super(key: key);
  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const MainScreen(),
              ),
            );
          },
          child: const Text("Open Chatbot"),
        ),
      ),
    );
  }
}

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    Color ranCol() {
      // Define all colors you want here
      const predefinedColors = [
        Colors.red,
        Colors.green,
        Colors.blue,
        Colors.white
      ];
      Random random = Random();
      return predefinedColors[random.nextInt(predefinedColors.length)];
    }

    String ranText() {
      // Define all colors you want here
      const predefinedText = [
        "Togg"
            "Otomomobilimiz",
        "Yerli",
        "Ve",
        "Milli"
      ];
      Random random = Random();
      return predefinedText[random.nextInt(predefinedText.length)];
    }

    String ranButtonText() {
      // Define all colors you want here
      const predefinedText = [
        "App",
        "Settings",
        "Back",
      ];
      Random random = Random();
      return predefinedText[random.nextInt(predefinedText.length)];
    }

    return Scaffold(
        appBar: AppBar(
          title: const Text("Etiyalytics Demo"),
        ),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: ListView.builder(
                          itemExtent: 100,
                          itemCount: 12,
                          itemBuilder: (context, index) => ListTile(
                                onTap: () {
                                  setState(() {
                                    Etiyalytics.addEvent(const EventAddRequest(
                                      action: 'List Tile Clicked',
                                    ));
                                  });
                                },
                                tileColor: ranCol(),
                                title: Center(
                                    child: Text(
                                  ranText.call(),
                                )),
                                subtitle: const Center(
                                    child: Text(
                                  "Filtrable Event ",
                                )),
                                contentPadding: const EdgeInsets.all(14),
                                iconColor: ranCol.call(),
                                leading: Icon(
                                  Icons.abc_rounded,
                                  size: 50,
                                  color: ranCol.call(),
                                ),
                              )),
                    ),
                    Expanded(
                      flex: 1,
                      child: ListView.builder(
                          itemExtent: 150,
                          itemCount: 6,
                          itemBuilder: (context, index) => ListTile(
                                onTap: () {
                                  setState(() {
                                    Etiyalytics.addEvent(const EventAddRequest(
                                      action: 'List Tile Clicked',
                                    ));
                                  });
                                },
                                tileColor: Colors.white,
                                subtitle:
                                    const Center(child: Text("Basic event")),
                                title: Center(
                                    child: Text(
                                  ranButtonText.call(),
                                )),
                                contentPadding: const EdgeInsets.all(14),
                                iconColor: ranCol.call(),
                              )),
                    ),
                  ],
                ),
              )
            ]));
  }
}
