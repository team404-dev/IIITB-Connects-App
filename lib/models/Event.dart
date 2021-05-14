import 'package:iiitb_connects/models/Content.dart';

class Event {
  /*
  * TODO
  *  - This is general class for home feed and club activities, both have common attributes.
  *  - Use 'tag' to differentiate {feed, club}
  *  - Functions here are just triggers and network calls should be dealt separately
  * */
  String _id, tag, details, imgUrl;
  int kudosCount;
  List<Content> comments;

  Event(this._id, this.tag, this.details, this.imgUrl, this.kudosCount,
      this.comments);

  String get id => _id;

/*
  * TODO - Implement
  *  - Event.fromJson(jsonObject) {}
  *  - Future loadContent() {}
  * */
}