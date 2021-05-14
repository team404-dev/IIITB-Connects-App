class Content {
  /*
  * TODO
  *  - This can be a general class for questions, answers, comments
  *  - Use attribute 'tag' to differentiate {question, answer, comment}
  *  - Attribute 'children' contains answers(in case of questions) & replies(in case of comments)
  *  - 'kudos' analogous to likes
  *  - Functions here are just triggers and network calls should be dealt separately
  * */
  String _id, tag, content;
  String createdBy, createdOn;
  List<Content> children;
  int kudos;
  bool edited;

  Content(this._id, this.tag, this.content, this.createdBy, this.createdOn, this.children,
      this.kudos, this.edited);

  String get id => _id;

/*
  * TODO - Implement
  *  - Content.fromJson(jsonObject) {}
  *  - Future editContent(String newContent) {}
  *  - Future addChild(Content content) {}
  * */
}