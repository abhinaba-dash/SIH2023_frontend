import 'dart:core';
import 'package:flutter/material.dart';

class TextConvert extends StatefulWidget {
  const TextConvert({super.key});

  @override
  State<TextConvert> createState() => _TextConvertState();
}

class _TextConvertState extends State<TextConvert> {
  TextEditingController _paragraphController = TextEditingController();
  List<String> _sentences = [];

  void _breakParagraph() {
    String paragraph = _paragraphController.text;
    final RegExp sentenceSplitter = RegExp(r'(?<=[,.!?])\s+');
    setState(() {
      _sentences = paragraph.split(sentenceSplitter);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Container(
            height: 1000,
            width: 400,
            child: Column(
              children: [
                TextField(
                  controller: _paragraphController,
                  maxLines: 5,
                  decoration: InputDecoration(labelText: 'Enter a paragraph'),
                ),
                SizedBox(height: 16.0),
                ElevatedButton(
                  onPressed: _breakParagraph,
                  child: Text('Break Paragraph into Sentences'),
                ),
                SizedBox(height: 16.0),
                Expanded(
                  child: ListView.builder(
                    itemCount: _sentences.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text(_sentences[index]),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
