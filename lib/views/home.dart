import 'package:flutter/material.dart';
import 'package:instagram_clone/components/post_container.dart';
import 'package:instagram_clone/components/story_icon.dart';
import 'package:instagram_clone/models/user_list.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        // Mengatur leading appbar (logo text instagram)
        leadingWidth: 140,
        leading: Padding(
          padding: const EdgeInsets.only(left: 12),
          child: Image.asset(
            'assets/images/logo-text.png',
          ),
        ),
        actions: const <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12),
            child: Icon(
              Icons.add_box_outlined,
              size: 30,
              color: Colors.black,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12),
            child: Icon(
              Icons.favorite_outline,
              size: 30,
              color: Colors.black,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12),
            child: Icon(
              Icons.chat_bubble_outline,
              size: 30,
              color: Colors.black,
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 5),
        child: Expanded(
          child: ListView(
            children: [
              SizedBox(
                height: 122,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: userList
                      .map((user) => StoryIcon(
                            username: user.name.length > 9
                                ? user.name.substring(0, 9) + '...'
                                : user.name,
                            profileUrl: user.profileUrl,
                          ))
                      .toList(),
                ),
              ),
              // Garis pembagi story dan posting
              Container(
                width: double.infinity,
                height: 1,
                color: Colors.grey.withOpacity(0.3),
              ),
              for (PostList post in postList)
                PostContainer(
                  username: post.user.name,
                  profileUrl: post.user.profileUrl,
                  postUrl: post.assetUrl,
                  caption: post.caption,
                  createdAt: post.createdAt,
                )
            ],
          ),
        ),
      ),
    );
  }
}
