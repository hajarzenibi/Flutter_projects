class Post{
  // properties of the Post class
  final int id;
  final String title;
  final String content;
  // constructor
  Post({required this.id, required this.title, required this.content});
// convert json to Post object
  factory Post.fromJson(Map<String, dynamic> json){
    return Post(
      id: json['id'] as int,
      title: json['title'] as String,
      content: json['content'] as String,
    );
  }
}