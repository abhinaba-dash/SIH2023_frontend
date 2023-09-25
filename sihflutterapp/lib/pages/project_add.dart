import 'package:flutter/material.dart';

class ProjectAdd extends StatefulWidget {
  const ProjectAdd({super.key});

  @override
  State<ProjectAdd> createState() => _ProjectAddState();
}

class _ProjectAddState extends State<ProjectAdd> {
  final TextEditingController _paragraphController = TextEditingController();

  void _breakParagraph(BuildContext context) {
    String paragraph = _paragraphController.text;
    final RegExp sentenceSplitter = RegExp(r'(?<=[,.!?])\s+');
    List<String> sentences = paragraph.split(sentenceSplitter);
    Navigator.pushNamed(context, '/output', arguments: sentences);
  }

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
                    IconButton(
                      color: Colors.white,
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(Icons.arrow_back),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 38.5),
                      child: SizedBox(
                        height: 48,
                        width: 200,
                        child: Padding(
                          padding: EdgeInsets.only(top: 12.0),
                          child: TextField(
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w400),
                            decoration: InputDecoration.collapsed(
                                hintText: 'Enter Project Name',
                                hintStyle: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w400)
                                // labelStyle: TextStyle(color: Colors.black)
                                ),
                          ),
                        ),
                      ),
                    ),
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
                        child: Container(
                          height: height * 0.6,
                          width: width * 0.9,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(15))),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextField(
                              controller: _paragraphController,
                              maxLines: null,
                              style: const TextStyle(color: Colors.black),
                              decoration: const InputDecoration(
                                hintText: 'Enter press related text...',
                                filled: true,
                                fillColor: Colors.white,
                                border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                ),
                                hintStyle: TextStyle(
                                    color: Color.fromARGB(255, 160, 160, 160),
                                    fontWeight: FontWeight.w600),
                              ),
                              keyboardType: TextInputType.multiline,
                              scribbleEnabled: true,
                            ),
                          ),
                        ),
                      )),
                ),
                ElevatedButton(
                    onPressed: () => _breakParagraph(context),
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
                        Text("Submit"),
                        Icon(Icons.arrow_forward),
                      ],
                    )),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
