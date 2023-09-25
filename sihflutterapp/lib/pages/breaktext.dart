import 'package:flutter/material.dart';
import 'package:sihflutterapp/pages/ProjectAdd.dart';

class OutputPage extends StatefulWidget {
  @override
  State<OutputPage> createState() => _OutputPageState();
}

class _OutputPageState extends State<OutputPage> {
  @override
  Widget build(BuildContext context) {
    List<String> sentences =
        ModalRoute.of(context)!.settings.arguments as List<String>;
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(children: [
          // Background Image
          Image.asset(
            "assets/images/Ellipse_f.png",
            height: 300,
            width: width,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: width * 0.045, vertical: height * 0.08),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      color: Colors.white,
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ProjectAdd(),
                            ));
                      },
                      icon: Icon(Icons.arrow_back),
                    ),
                    Text("Text split",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w400)),
                    Image.asset("assets/images/headerim.png"),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: width * 0.0, vertical: height * 0.03),
                  child: Container(
                    height: height * 0.7,
                    width: width * 1.0,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: const Color.fromARGB(
                                  255, 220, 219, 219), //New
                              blurRadius: 1.0,
                              offset: Offset(0, 5))
                        ],
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: ListView.builder(
                        itemCount: sentences.length,
                        itemBuilder: (context, index) {
                          return ListTile(
                            title: Text(sentences[index]),
                          );
                        },
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ]),
      ),
    );

    // body: Padding(
    //   padding: const EdgeInsets.all(16.0),
    //   child: ListView.builder(
    //     itemCount: sentences.length,
    //     itemBuilder: (context, index) {
    //       return ListTile(
    //         title: Text(sentences[index]),
    //       );
    //     },
    //   ),
    // ),
  }
}
