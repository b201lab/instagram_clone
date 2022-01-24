import 'package:flutter/material.dart';
import 'package:instagram_clone/models/user_list.dart';

class PostContainer extends StatelessWidget {
  final String username;
  final String profileUrl;
  final String postUrl;
  final String caption;
  final String createdAt;

  const PostContainer(
      {Key? key,
      required this.username,
      required this.profileUrl,
      required this.postUrl,
      required this.caption,
      required this.createdAt})
      : super(key: key);

  Widget buildProfileIcon() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(profileUrl),
                radius: 20,
              ),
              const SizedBox(width: 10),
              Text(
                username,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              )
            ],
          ),
          const Icon(Icons.more_vert, color: Colors.grey)
        ],
      ),
    );
  }

  Widget buildActionIcons() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: const [
              Icon(
                Icons.favorite_outline,
                size: 30,
              ),
              SizedBox(width: 20),
              Icon(
                Icons.mode_comment_outlined,
                size: 30,
              ),
            ],
          ),
          const BookmarkIcon()
        ],
      ),
    );
  }

  Widget buildLikeView() {
    return const Text(
      'Like 0',
      style: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w400,
      ),
    );
  }

  Widget buildCaptionField() {
    return Text.rich(
      TextSpan(
        text: username + ' ',
        style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),
        children: [
          TextSpan(
            text: caption,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }

  Widget buildCommentField() {
    String _comment = '';
    return Row(
      children: [
        CircleAvatar(
          radius: 18,
          backgroundImage: NetworkImage(userList[0].profileUrl),
        ),
        const SizedBox(width: 10),
        Expanded(
          child: TextField(
            onChanged: (value) => _comment,
            decoration: const InputDecoration(
              hintText: 'Tambahkan Komentar...',
              border: InputBorder.none,
            ),
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        buildProfileIcon(),
        ConstrainedBox(
          constraints: const BoxConstraints(
            minHeight: 350,
            maxHeight: 500,
          ),
          child: Image.network(
            postUrl,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              buildActionIcons(),

              buildLikeView(),
              const SizedBox(height: 5),

              // Caption
              buildCaptionField(),
              const SizedBox(height: 5),

              buildCommentField(),
              const SizedBox(height: 3),

              Text(
                '2 hari yang lalu',
                style: TextStyle(color: Colors.grey[600]),
              ),
              const SizedBox(height: 10),
            ],
          ),
        )
      ],
    );
  }
}

class BookmarkIcon extends StatefulWidget {
  const BookmarkIcon({Key? key}) : super(key: key);

  @override
  _BookmarkIconState createState() => _BookmarkIconState();
}

class _BookmarkIconState extends State<BookmarkIcon> {
  bool _isActive = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          _isActive = !_isActive;
        });
      },
      child: Icon(
        _isActive ? Icons.bookmark : Icons.bookmark_border,
        size: 30,
      ),
    );
  }
}
