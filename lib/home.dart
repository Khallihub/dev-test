import 'package:flutter/material.dart';

import 'comment.dart';
import 'comment_input.dart';
import 'comment_model.dart';

class Home extends StatefulWidget {
  final ValueNotifier<bool> hideUI;

  const Home({Key? key, required this.hideUI}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final String cardText =
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec euismod, nisl sed aliquet ultricies, nunc sapien ultricies arcu, vitae aliquam odio nLorem ipsum dolor sit amet, consectetur adipiscing elit. Donec euismod, nisl sed aliquet ultricies, nunc sapien ultricies arcu, vitae aliquam odio nLorem ipsum dolor sit amet, consectetur adipiscing elit. Donec euismod, nisl sed aliquet ultricies, nunc sapien ultricies arcu, vitae aliquam odio nLorem ipsum dolor sit amet, consectetur adipiscing elit. Donec euismod, nisl sed aliquet ultricies, nunc sapien ultricies arcu, vitae aliquam odio nLorem ipsum dolor sit amet, consectetur adipiscing elit. Donec euismod, nisl sed aliquet ultricies, nunc sapien ultricies arcu, vitae aliquam odio nunc eget nisl. Donec euismod, nisl sed aliquet ultricies, nunc sapien ultricies arcu, vitae aliquam odio nunc eget nisl.adipiscing elit. Donec euismod, nisl sed aliquet ultricies, nunc sapien ultricies arcu, vitae aliquam odio nLorem ipsum dolor sit amet, consectetur adipiscing elit. Donec euismod, nisl sed aliquet ultricies, nunc sapien ultricies arcu, vitae aliquam odio nLorem ipsum dolor sit amet, consectetur adipiscing elit. Donec euismod, nisl sed aliquet ultricies, nunc sapien ultricies arcu, vitae aliquam odio nLorem ipsum dolor sit amet, consectetur adipiscing elit. Donec euismod, nisl sed aliquet ultric, consectetur adipiscing elit. Donec euismod, nisl sed aliquet ultricies, nunc sapien ultricies arcu, vitae aliquam odio nunc eget nisl. Donec euismod, sapien ultricies arcu, vitae aliquam odio nunc eget nisl. Donec euismod, nisl sed aliquet ultricies, nunc sapien ultricies arcu, vitae aliquam odio nunc eget nisl.adipiscing elit. Donec euismod, nisl sed aliquet ultricies, nunc sapien ultricies arcu, vitae aliquam odio nLorem ipsum dolor sit amet, consectetur adipiscing elit. Donec euismod, nisl sed aliquet ultricies, nunc sapien ultricies arcu, vitae aliquam odio nLorem ipsum dolor sit amet, consectetur adipiscing elit. Donec euismod, nisl sed aliquet ultricies, nunc sapien ultricies arcu, vitae aliquam odio nLorem ipsum dolor sit amet, consectetur adipiscing elit. Donec euismod, nisl sed aliquet ultricies, nunc sapien ultricies arcu, vitae aliquam odio nLorem ipsum dolor sit amet, consectetur adipiscing elit. Donec euismod, nisl sed aliquet ultricies, nunc sapien ultricies arcu, vitae aliquam odio nunc eget nisl. Donec euismod, nisl sed aliquet ultricies, nunc sapien ultricies arcu, vitae aliquam odialiquam odio nunc eget nisl. Donec euismod, nisl sed aliquet ultricies, nunc sapien ultricies arcu, vitae aliquam odialiquam odio nunc eget nisl. Donec euismod, nisl sed aliquet ultricies, nunc sapien ultricies arcu, vitae aliquam odialiquam odio nunc eget nisl. Donec euismod, nisl sed aliquet ultricies, nunc sapien ultricies arcu, vitae aliquam odialiquam odio nunc eget nisl. Donec euismod, nisl sed aliquet ultricies, nunc sapien ultricies arcu, vitae aliquam odialiquam odio nunc eget nisl. Donec euismod, nisl sed aliquet ultricies, nunc sapien ultricies arcu, vitae aliquam odialiquam odio nunc eget nisl. Donec euismod, nisl sed aliquet ultricies, nunc sapien ultricies arcu, vitae aliquam odialiquam odio nunc eget nisl. Donec euismod, nisl sed aliquet ultricies, nunc sapien ultricies arcu, vitae aliquam odio nunc eget nisl.";
  // "kdadlkjfdfjadk";
  bool showFullText = false;
  List<Comment> comments = [
    Comment(
        author: "Kerry Johns",
        userName: "@Kerryjo",
        date: "3 hours ago",
        comment:
            "Lorem ipsum dolor sit amet consectetur. Aliquam sagittis ullamcorper      amet justo quisque          ullamcorper volutpat. Donec feugiat diam et tellus in habitant viverra duis. ",
        avatarUrl: "avatarUrl",
        replies: [],
        repliesCount: "15k",
        likes: "7k",
        flags: "0"),
    Comment(
        author: "Kerry Johns",
        userName: "@Kerryjo",
        date: "8 hours ago",
        comment:
            "Lorem ipsum dolor sit amet consectetur. Aliquam sagittis ullamcorper      amet justo quisque          ullamcorper volutpat. Donec feugiat diam et tellus in habitant viverra duis. ",
        avatarUrl: "avatarUrl",
        replies: [],
        repliesCount: "15k",
        likes: "7k",
        flags: "0"),
    Comment(
        author: "Kerry Johns",
        userName: "@Kerryjo",
        date: "3 hours ago",
        comment:
            "Lorem ipsum dolor sit amet consectetur. Aliquam sagittis ullamcorper      amet justo quisque          ullamcorper volutpat. Donec feugiat diam et tellus in habitant viverra duis. ",
        avatarUrl: "avatarUrl",
        replies: [],
        repliesCount: "15k",
        likes: "7k",
        flags: "0"),
    Comment(
        author: "Kerry Johns",
        userName: "@Kerryjo",
        date: "8 hours ago",
        comment:
            "Lorem ipsum dolor sit amet consectetur. Aliquam sagittis ullamcorper      amet justo quisque          ullamcorper volutpat. Donec feugiat diam et tellus in habitant viverra duis. ",
        avatarUrl: "avatarUrl",
        replies: [],
        repliesCount: "15k",
        likes: "7k",
        flags: "0"),
    Comment(
        author: "Kerry Johns",
        userName: "@Kerryjo",
        date: "3 hours ago",
        comment:
            "Lorem ipsum dolor sit amet consectetur. Aliquam sagittis ullamcorper      amet justo quisque          ullamcorper volutpat. Donec feugiat diam et tellus in habitant viverra duis. ",
        avatarUrl: "avatarUrl",
        replies: [],
        repliesCount: "15k",
        likes: "7k",
        flags: "0"),
    Comment(
        author: "Kerry Johns",
        userName: "@Kerryjo",
        date: "8 hours ago",
        comment:
            "Lorem ipsum dolor sit amet consectetur. Aliquam sagittis ullamcorper      amet justo quisque          ullamcorper volutpat. Donec feugiat diam et tellus in habitant viverra duis. ",
        avatarUrl: "avatarUrl",
        replies: [],
        repliesCount: "15k",
        likes: "7k",
        flags: "0"),
    Comment(
        author: "Kerry Johns",
        userName: "@Kerryjo",
        date: "3 hours ago",
        comment:
            "Lorem ipsum dolor sit amet consectetur. Aliquam sagittis ullamcorper      amet justo quisque          ullamcorper volutpat. Donec feugiat diam et tellus in habitant viverra duis. ",
        avatarUrl: "avatarUrl",
        replies: [],
        repliesCount: "15k",
        likes: "7k",
        flags: "0")
  ];

  List<CommentModel> commentModels(List<Comment> comments) {
    List<CommentModel> commentModelsList = comments
        .map((comment) => CommentModel(
              comment: comment,
              isReply: false,
            ))
        .toList();
    return commentModelsList;
  }

  @override
  Widget build(BuildContext context) {
    showFullText = cardText.length < 150 ? true : showFullText;
    List<CommentModel> commentList = commentModels(comments);
    return ValueListenableBuilder(
        valueListenable: widget.hideUI,
        builder: (BuildContext context, bool value, Widget? child) {
          return Stack(
            children: [
              Image.asset("assets/images/image.png"),
              if (!value)
                Positioned(
                  bottom: 20.0,
                  left: 0,
                  right: 20,
                  child: Card(
                    
                    margin: const EdgeInsets.symmetric(horizontal: 36.0),
                    color: const Color.fromRGBO(196, 196, 196, 0.5),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Container(
                        constraints: BoxConstraints(
                          maxHeight: MediaQuery.of(context).size.height * 0.60,
                        ),
                        child: SingleChildScrollView(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              if (showFullText)
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      showFullText =
                                          !showFullText; // Toggle showFullText
                                    });
                                  },
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Text(
                                        showFullText ? "Less" : "More",
                                        style: const TextStyle(
                                            color: Colors.green),
                                      ),
                                      Icon(
                                        showFullText
                                            ? Icons.arrow_downward_rounded
                                            : Icons.arrow_upward_rounded,
                                        size: 16.0,
                                        color: Colors.green,
                                      ),
                                    ],
                                  ),
                                ),
                              Text(
                                showFullText
                                    ? cardText
                                    : cardText.substring(0,
                                        150), // Show only first 150 characters
                                textAlign: TextAlign.left,
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 16.0,
                                ),
                                overflow:
                                    TextOverflow.fade, // Set overflow behavior
                              ),
                              if (cardText.length > 150 && !showFullText)
                                Align(
                                  alignment: Alignment.bottomRight,
                                  child: GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          showFullText =
                                              !showFullText; // Toggle showFullText
                                        });
                                      },
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Text(
                                            showFullText ? "Less" : "More",
                                            style: const TextStyle(
                                                color: Colors.green),
                                          ),
                                          Icon(
                                            showFullText
                                                ? Icons.arrow_downward_rounded
                                                : Icons.arrow_upward_rounded,
                                            size: 16.0,
                                            color: Colors.green,
                                          ),
                                        ],
                                      )),
                                ),
                              const Text(
                                "27 Oct. 2020 @5:23pm",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 192, 64, 215)),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              if (!value)
                Positioned(
                  bottom: 46.0,
                  right: 16.0,
                  child: Column(
                    children: [
                      const CircleAvatar(
                        backgroundColor: Colors.white,
                      ),
                      const SizedBox(height: 8.0),
                      IconButton(
                        icon: const Icon(Icons.rectangle,
                            size: 30.0, color: Colors.white),
                        onPressed: () {},
                      ),
                      const SizedBox(height: 8.0),
                      IconButton(
                        icon: const Icon(Icons.comment,
                            size: 30.0, color: Colors.white),
                        onPressed: () {
                          showModalBottomSheet(
                            context: context,
                            isScrollControlled: true,
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.vertical(
                                top: Radius.circular(26.0),
                              ),
                            ),
                            builder: (BuildContext context) {
                              return SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.75,
                                child: Column(
                                  children: [
                                    Container(
                                      decoration: const BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(8.0),
                                          bottomRight: Radius.circular(8.0),
                                        ),
                                        color: Color.fromRGBO(95, 99, 104, 1),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          "${commentList.length} Comments",
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 12.0,
                                    ),
                                    Expanded(
                                      child: ListView(children: commentList),
                                    ),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            bottom: MediaQuery.of(context)
                                                .viewInsets
                                                .bottom),
                                        child: const CommentInput(
                                          isReply: false,
                                        )),
                                  ],
                                ),
                              );
                            },
                          );
                        },
                      ),
                      const SizedBox(height: 8.0),
                      const Text(
                        "45k",
                        style: TextStyle(color: Colors.white),
                      ),
                      IconButton(
                        icon: const Icon(Icons.favorite,
                            size: 30.0, color: Colors.white),
                        onPressed: () {},
                      ),
                      const SizedBox(height: 8.0),
                      const Text(
                        "45k",
                        style: TextStyle(color: Colors.white),
                      ),
                      IconButton(
                        icon: const Icon(Icons.share,
                            size: 30.0, color: Colors.white),
                        onPressed: () {},
                      )
                    ],
                  ),
                ),
              Positioned(
                bottom: value ? 20.0 : 0.0,
                right: !value ? 0.0 : null,
                left: value ? 0.0 : null,
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      widget.hideUI.value = !widget.hideUI.value;
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(82, 228, 150, 5),
                      borderRadius: BorderRadius.only(
                        topLeft:
                            !value ? const Radius.circular(20.0) : Radius.zero,
                        bottomLeft:
                            !value ? const Radius.circular(20.0) : Radius.zero,
                        topRight:
                            value ? const Radius.circular(20.0) : Radius.zero,
                        bottomRight:
                            value ? const Radius.circular(20.0) : Radius.zero,
                      ),
                    ),
                    child: Icon(
                      value
                          ? Icons.keyboard_double_arrow_right_outlined
                          : Icons.keyboard_double_arrow_left_outlined,
                      size: 35.0,
                      color: const Color.fromARGB(255, 188, 187, 187),
                    ),
                  ),
                ),
              ),
            ],
          );
        });
  }
}
