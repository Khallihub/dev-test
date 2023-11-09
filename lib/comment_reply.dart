import 'package:flutter/material.dart';
import 'package:tiktok/comment.dart';
import 'package:tiktok/comment_input.dart';

import 'comment_model.dart';

class CommentReply extends StatefulWidget {
  final Comment comment;
  const CommentReply({super.key, required this.comment});

  @override
  State<CommentReply> createState() => _CommentReplyState();
}

class _CommentReplyState extends State<CommentReply> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          children: [
            CircleAvatar(
              radius: 20.0,
            ),
            Text('SeeQul', style: TextStyle(color: Colors.grey)),
            SizedBox(width: 4.0),
            Icon(Icons.keyboard_arrow_right, color: Colors.grey)
          ],
        ),
        backgroundColor: Colors.white,
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            color: Colors.grey,
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.lightbulb_circle_outlined),
            color: Colors.grey,
            onPressed: () {},
          ),
        ],
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
        Row(children: [
          IconButton(
            icon: const Icon(
              Icons.arrow_circle_left,
              size: 30,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          const SizedBox(
            width: 10,
          ),
          const Text(
            "Reply",
            style: TextStyle(fontSize: 24),
          )
        ]),
        CommentModel(
          comment: widget.comment,
          isReply: true,
        ),
        const SizedBox(height: 10),
        const CommentInput(
          isReply: true,
        )
      ]),
    );
  }
}
