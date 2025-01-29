import 'package:edu/teacher/study_notes/study_notes_details.dart';
import 'package:flutter/material.dart';

import '../../themes.dart';

class ContentWidget extends StatefulWidget {

  int index;

  ContentWidget(this.index,{super.key});

  @override
  State<ContentWidget> createState() => _ContentWidgetState();
}

class _ContentWidgetState extends State<ContentWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      padding: EdgeInsets.all(8),
      height: 48,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        border: Border.all(
          color: Themes.lightTheme.primaryColor,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("Content ${widget.index}",style: Themes.lightTheme.textTheme.displayLarge),
          Icon(Icons.arrow_forward_ios,color: Themes.lightTheme.iconTheme.color),
        ],
      ),
    );
  }
}

class ContentIndex{
  int index;
  ContentIndex(this.index);
}