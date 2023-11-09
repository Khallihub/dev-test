import 'package:flutter/material.dart';
import 'package:tiktok/comment_reply.dart';

import 'comment_model.dart';

class CommentModel extends StatefulWidget {
  final Comment comment;
  final bool isReply;
  const CommentModel({super.key, required this.comment, required this.isReply});

  @override
  State<CommentModel> createState() => _CommentModelState();
}

class _CommentModelState extends State<CommentModel> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: !widget.isReply
          ? const EdgeInsets.all(16.0)
          : const EdgeInsets.only(
              left: 16.0,
              right: 16.0,
              top: 16.0,
              bottom: 0.0,
            ),
      child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
        const CircleAvatar(
          radius: 20,
          backgroundImage: NetworkImage(
              'https://images.unsplash.com/photo-1622838177196-4b2b8b0b5b0f?ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwzNnx8fGVufDB8fHx8&ixlib=rb-1.2.1&w=1000&q=80'),
        ),
        const SizedBox(width: 10),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.7,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      widget.comment.author,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(width: 5),
                    Text(
                      widget.comment.userName,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.blue),
                    ),
                    const SizedBox(width: 60),
                    Text(
                      widget.comment.date,
                      style: const TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                    const SizedBox(width: 30),
                  ],
                ),
              ),
              const SizedBox(height: 5),
              Text(
                widget.comment.comment,
                style: const TextStyle(
                  color: Colors.grey,
                ),
              ),
              if (!widget.isReply)
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.5,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            IconButton(
                              icon: const Icon(
                                Icons.comment_bank_outlined,
                                color: Colors.grey,
                                size: 30,
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => CommentReply(
                                            comment: widget.comment,
                                          )),
                                );
                              },
                            ),
                            Text(
                              widget.comment.repliesCount.toString(),
                              style: const TextStyle(color: Colors.grey),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            IconButton(
                              icon: const Icon(
                                Icons.favorite_border_outlined,
                                color: Colors.grey,
                                size: 30,
                              ),
                              onPressed: () {},
                            ),
                            Text(
                              widget.comment.likes.toString(),
                              style: const TextStyle(color: Colors.grey),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            IconButton(
                              icon: const Icon(
                                Icons.flag_outlined,
                                color: Colors.grey,
                                size: 30,
                              ),
                              onPressed: () {},
                            ),
                            Text(
                              widget.comment.flags.toString(),
                              style: const TextStyle(color: Colors.grey),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              if (!widget.isReply)
                TextButton(
                    onPressed: () {},
                    child: Row(children: [
                      Text('View ${widget.comment.repliesCount} replies',
                          style: const TextStyle(color: Colors.grey)),
                      const Icon(Icons.keyboard_arrow_right, color: Colors.grey)
                    ])),
              if (widget.isReply)
                Row(
                  children: [
                    const SizedBox(
                      height: 60.0,
                    ),
                    const Text("Replying to "),
                    Text(widget.comment.author,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.orange)),
                    Text(
                      ' ${widget.comment.userName}',
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.orange),
                    ),
                  ],
                )
            ],
          ),
        ),
      ]),
    );
  }
}
