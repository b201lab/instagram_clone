import 'package:flutter/material.dart';

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
            children: [
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
          Icon(
            Icons.bookmark_border_outlined,
            size: 30,
          )
        ],
      ),
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
              Text(
                'Like 0',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
              RichText(
                text: TextSpan(
                  text: username,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: caption,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
