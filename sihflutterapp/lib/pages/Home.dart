import 'package:flutter/material.dart';
import 'package:sihflutterapp/pages/project_add.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
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
                    // const IconButton(Icons.format_list_bulleted, color: Colors.white),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.format_list_bulleted),
                        color: Colors.white),
                    const Text("Welcome Officer",
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
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Color.fromARGB(255, 220, 219, 219), //New
                                blurRadius: 1.0,
                                offset: Offset(0, 5))
                          ],
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: width * 0.045, vertical: height * 0.03),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Your Projects",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500),
                            ),
                            Icon(Icons.search,
                                color: Color.fromARGB(255, 14, 47, 210))
                          ],
                        ),
                      )),
                ),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ProjectAdd(),
                          ));
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 2, 49, 99),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      fixedSize: const Size(200, 45),
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.add),
                        Text("New Projects"),
                      ],
                    ))
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
