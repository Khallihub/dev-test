import 'package:emoji_picker_flutter/emoji_picker_flutter.dart';
import 'package:flutter/material.dart';

class CommentInput extends StatelessWidget {
  final bool isReply;
  const CommentInput({
    super.key,
    required this.isReply,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          top:
              !isReply ? const BorderSide(color: Colors.grey) : BorderSide.none,
        ),
      ),
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          const CircleAvatar(
            radius: 20,
            backgroundImage: NetworkImage(
                'https://unsplash.com/photos/silhouette-of-man-illustration-2LowviVHZ-E'),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40.0),
                border: Border.all(color: Colors.grey),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      onPressed: () {
                        showModalBottomSheet(
                          context: context,
                          isScrollControlled: true,
                          builder: (BuildContext context) {
                            return SizedBox(
                              height: MediaQuery.of(context).size.height * 0.8,
                              child: EmojiPicker(
                                onEmojiSelected: (emoji, category) {
                                  // Handle selected emoji
                                  Navigator.pop(context); // Close bottom sheet
                                },
                              ),
                            );
                          },
                        );
                      },
                      icon: const Icon(Icons.emoji_emotions_outlined),
                      iconSize: 32,
                      color: Colors.grey),
                  const Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Add a comment...',
                        hintStyle: TextStyle(color: Colors.grey),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.send),
                    iconSize: 32,
                    color: Colors.blue,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
