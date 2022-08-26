import 'package:flutter/material.dart';
import 'text.dart';

class TextControl extends StatefulWidget {
  final List<String> list;
  final int selectedIndex;
  final VoidCallback changeText;

  TextControl(this.list, this.selectedIndex, this.changeText);
  @override
  State<TextControl> createState() => _TextControlState();
}

class _TextControlState extends State<TextControl> {
  @override
  Widget build(BuildContext context) {
    return widget.list.length - 1 >= widget.selectedIndex
        ? Column(
            children: [
              SpecialText(widget.list[widget.selectedIndex]),
              Container(
                child: ElevatedButton(
                  onPressed: widget.changeText,
                  child: SpecialText('Change Text'),
                ),
                width: 150,
                height: 50,
              )
            ],
          )
        : SpecialText("Text Bitti");
  }
}
