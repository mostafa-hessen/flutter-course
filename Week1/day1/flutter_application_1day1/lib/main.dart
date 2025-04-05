import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});


  @override
  Widget build(BuildContext context) {
    return MyApp();
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "hel",
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: const Color.fromARGB(255, 39, 126, 190),
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  // top app
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Column(
                        children: [
                          Text(
                            "Hi,bebo",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          Text(
                            "23 Jul 2025",
                            style: TextStyle(
                                fontSize: 13,
                                color: Color.fromARGB(255, 113, 179, 220)),
                          )
                        ],
                      ),
                      Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: const Color.fromARGB(255, 64, 141, 197)),
                        child: const Icon(
                          Icons.access_alarm,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 20),
                  //search sect,,,,,ion
                  Container(
                    padding: const EdgeInsets.all(10),

                    // width: 400,
                    // height: 50,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 113, 179, 220),
                        borderRadius: BorderRadius.circular(10)),
                    child: const Row(
                      children: [
                        Icon(
                          Icons.search,
                          color: Colors.white,
                        ),
                        SizedBox(width: 5),
                        Text(
                          'Search',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),

                  //Features
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("How do you feel",
                          style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
                      Icon(
                        Icons.more_horiz,
                        color: Colors.white,
                      )
                    ],
                  ),
                  const SizedBox(height: 20),

                  // emoje
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      //  EmojjiFace(emojiFace: "😒",textEmotion: "bad"),
                      //  EmojjiFace(emojiFace: "💕",textEmotion: "good"),
                      //  EmojjiFace(emojiFace: "❤️😍",textEmotion: "happy"),

                      // After

                      Column(
                        children: [
                          Container(
                            width: 90,
                            height: 90,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadiusDirectional.circular(10),
                              color: const Color.fromARGB(255, 64, 141, 197),
                            ),
                            child: const Text(
                              '🤩',
                              style: TextStyle(fontSize: 30),
                            ),
                          ),
                          const Padding(
                              padding: EdgeInsets.all(10),
                              child: Text(
                                "badly",
                                style: TextStyle(
                                    fontSize: 16, color: Colors.white),
                              ))
                        ],
                      )
                    ],
                  ),
                  Expanded(
                    child: Container(
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20)),
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}

// ignore: must_be_immutable
class EmojjiFace extends StatelessWidget {
  String? emojiFace = "";
  String textEmotion = "";
  EmojjiFace({super.key, required this.emojiFace, required this.textEmotion});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 90,
          height: 90,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadiusDirectional.circular(10),
            color: const Color.fromARGB(255, 64, 141, 197),
          ),
          child: Text(
            emojiFace!,
            style: const TextStyle(fontSize: 30),
          ),
        ),
        Padding(
            padding: const EdgeInsets.all(10),
            child: Text(
              textEmotion,
              style: const TextStyle(fontSize: 16, color: Colors.white),
            ))
      ],
    );

    // Padding(padding: EdgeInsets.all(10), child: Text("badly" ,style: TextStyle(fontSize: 16,color: Colors.white), ))
  }
}
