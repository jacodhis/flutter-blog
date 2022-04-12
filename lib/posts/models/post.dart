class Post {
  String name = '';
  String description = '';
  String image = '';

  Post({required this.name, required this.description, required this.image});
}

List<Post> posts = [
  Post(name: 'post one', description: 'thie is description one', image: 'one'),
  Post(name: 'post two', description: 'thie is description two', image: 'two'),
  Post(
      name: 'post three',
      description: 'thie is description three',
      image: 'this is image three'),
  Post(
      name: 'post four',
      description: 'thie is description four',
      image: 'four'),
  Post(
      name: 'post five',
      description: 'thie is description five',
      image: 'five'),
];

// List posts = [
//   ['post one', 'thie is description one'],
//   ['post one', 'thie is description one']
// ];
