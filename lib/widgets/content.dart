import 'package:flutter/material.dart';
import '../models/Content.dart';

class ContentItem extends StatelessWidget {
  final Content content;
  ContentItem({required this.content});

  /*
  * TODO - Create items for questions, comments, answers
  * */

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class ChildContentItem extends StatelessWidget {
  final Content childContent;
  ChildContentItem({required this.childContent});

  /*
  * TODO - Create items for replies to comments
  * */

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
