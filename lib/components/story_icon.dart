import 'package:flutter/material.dart';

class StoryIcon extends StatelessWidget {
  final String username;
  final String profileUrl;

  const StoryIcon({
    Key? key,
    required this.username,
    required this.profileUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Column(
        children: [
          // SizedBox agar gap antar story icon sama besar
          SizedBox(
            width: 85,
            child: Container(
              padding: const EdgeInsets.all(3),
              width: 85,
              height: 85,
              decoration: BoxDecoration(
                color: Colors.transparent,
                border: Border.all(
                  color: Colors.red,
                  width: 3,
                ),
                borderRadius: BorderRadius.circular(50),
              ),
              child: CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage(profileUrl),
              ),
            ),
          ),
          const SizedBox(height: 5),
          Text(
            username,
            style: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w400,
            ),
          )
        ],
      ),
    );
  }
}
