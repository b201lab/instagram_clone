class UserList {
  final String name;
  final String profileUrl;

  UserList({required this.name, required this.profileUrl});
}

class PostList {
  final UserList user;
  final String createdAt;
  final String assetUrl;
  final String caption;

  PostList({
    required this.user,
    required this.createdAt,
    required this.assetUrl,
    required this.caption,
  });
}

var userList = [
  UserList(
    name: 'bakarbsa_',
    profileUrl: 'https://picsum.photos/id/100/600/400.jpg'
  ),
  UserList(
    name: 'dwiarisetiawan',
    profileUrl: 'https://picsum.photos/id/101/600/400.jpg'
  ),
  UserList(
    name: 'arshadtareeq',
    profileUrl: 'https://picsum.photos/id/102/600/400.jpg'
  ),
  UserList(
    name: 'dafaraisya',
    profileUrl: 'https://picsum.photos/id/103/600/400.jpg'
  ),
  UserList(
    name: 'dion',
    profileUrl: 'https://picsum.photos/id/104/600/400.jpg'
  ),
];

var postList = [
  PostList(
    user: userList[0],
    createdAt: '20 Desember 2021',
    assetUrl: 'https://picsum.photos/id/110/600/400.jpg',
    caption: 'Don’t trust everything you see, even salt can look like sugar',
  ),
  PostList(
    user: userList[1],
    createdAt: '11 Desember 2021',
    assetUrl: 'https://picsum.photos/id/106/600/400.jpg',
    caption:
        'An apple a day will keep anyone away if you throw it hard enough.',
  ),
  PostList(
    user: userList[2],
    createdAt: '01 November 2021',
    assetUrl: 'https://picsum.photos/id/107/600/400.jpg',
    caption: 'Give second chances but not for the same mistake.',
  ),
  PostList(
    user: userList[3],
    createdAt: '24 Oktober 2021',
    assetUrl: 'https://picsum.photos/id/108/600/400.jpg',
    caption: 'The biggest mistake you can ever make is to be afraid to make mistakes',
  ),
  PostList(
    user: userList[4],
    createdAt: '10 Oktober 2021',
    assetUrl: 'https://picsum.photos/id/109/600/400.jpg',
    caption: '“My coach said I run like a girl. So I said if he ran a little faster he could too.” – Mia Hamm',
  ),
];
