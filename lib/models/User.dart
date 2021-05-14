import '../models/Event.dart';
import '../models/Content.dart';

class User {
  /*
  * TODO
  *  - Contains user attributes
  *  - Contains functions relevant to user - loadProfile(), updateProfile(), etc
  *  - Make this a ChangeNotifierProvider for state management
  *  - Functions here are just triggers and network calls should be dealt separately
  * */
  String name, email, imgUrl, _id;
  String instagram, github, linkedIn;
  List<Content> questions, answers;
  List<Event> optedInEvents, likedPosts;

  User(this._id, this.name, this.email, this.imgUrl, this.instagram, this.github,
      this.linkedIn, this.questions, this.answers, this.optedInEvents, this.likedPosts);

  get id => _id;

/*
  * TODO - Implement
  *  - User.fromJson(jsonObject) {}
  *  - Future loadProfile() {}
  *  - Future updateProfile() {}
  *  - Future likePost(String _postId) {}
  *  - Future likeQuestion(String _contentId) {}
  *  - Future likeAnswer(String _contentId) {}
  *  - Future likeComments(String _contentId) {}
  *  - Future optInEvent(String _postId) {}
  *  - Future postQuestion(String _question) {}
  *  - Future postAnswer(String _answer) {}
  * */
}