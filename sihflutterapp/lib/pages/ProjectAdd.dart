import 'package:flutter/material.dart';
import 'package:sihflutterapp/pages/Home.dart';

class ProjectAdd extends StatefulWidget {
  const ProjectAdd({super.key});

  @override
  State<ProjectAdd> createState() => _ProjectAddState();
}

class _ProjectAddState extends State<ProjectAdd> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(children: [
          // Background Image
          Image.asset(
            "assets/images/Ellipse_1.png",
            height: 300,
            width: width,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: width * 0.040, vertical: height * 0.08),
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
                              builder: (context) => Home(),
                            ));
                      },
                      icon: Icon(Icons.arrow_back),
                    ),
                    Text("Enter Project Name",
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
                        padding: EdgeInsets.symmetric(
                            horizontal: width * 0.045, vertical: height * 0.03),
                        child: Container(
                          height: height * 0.6,
                          width: width * 0.9,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15))),
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: TextField(
                              style: TextStyle(color: Colors.black),
                              decoration: InputDecoration(
                                hintText: 'Enter press related text...',
                                filled: true,
                                fillColor: Colors.white,
                                border: OutlineInputBorder(
                                  // Use OutlineInputBorder with BorderSide.none
                                  borderSide: BorderSide.none,
                                ),
                                hintStyle: TextStyle(
                                    color: Color.fromARGB(255, 160, 160, 160),
                                    fontWeight: FontWeight.w600),
                              ),
                              keyboardType: TextInputType.multiline,
                              maxLines: null,
                              scribbleEnabled: true,
                            ),
                          ),
                        ),
                      )),
                ),
                ElevatedButton(
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Submit"),
                        Icon(Icons.arrow_forward),
                      ],
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 14, 47, 210),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      fixedSize: Size(200, 45),
                    ))
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
