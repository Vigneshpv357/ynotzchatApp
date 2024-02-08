import 'package:emoji_picker_flutter/emoji_picker_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/view/commonWidgets/bottomSheet.dart';
import 'package:flutter_application_1/view/colorConstants.dart';

class MessageBar extends StatefulWidget {
  const MessageBar({Key? key}) : super(key: key);

  @override
  State<MessageBar> createState() => _MessageBarState();
}

class _MessageBarState extends State<MessageBar> {
  bool _emojiShowing = false;
  TextEditingController messageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var mq = MediaQuery.sizeOf(context);

    return Container(
      color: Colorsused.secondaryColor,
      height: mq.height * .08,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: () {
                _toggleEmojiPicker();
              },
              child: Icon(
                Icons.emoji_emotions_outlined,
                color: Colors.grey,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
                onTap: () {
                  showModalBottomSheet(
                    backgroundColor: Colors.transparent,
                    context: context,
                    builder: (builder) => bottomsheet(context: context),
                  );
                },
                child: Icon(Icons.add)),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Color.fromARGB(123, 236, 236, 236),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextField(
                  controller: messageController,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.all(8.0),
                  ),
                ),
              ),
            ),
          ),
          IconButton(
            icon: messageController.text.isEmpty
                ? Icon(Icons.mic)
                : InkWell(onTap: () {}, child: Icon(Icons.send)),
            onPressed: () {},
          ),
        ],
      ),
    );
  }

  void _toggleEmojiPicker() {
    setState(() {
      _emojiShowing = !_emojiShowing;
    });

    if (_emojiShowing) {
      showModalBottomSheet(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(15.0),
          ),
        ),
        backgroundColor: Colors.transparent,
        context: context,
        builder: (builder) => EmojiPicker(
          config: Config(
            categoryViewConfig: CategoryViewConfig(
              showBackspaceButton: false,
            ),
            bottomActionBarConfig: BottomActionBarConfig(
              backgroundColor: Colors.white,
              buttonColor: Colors.white,
              buttonIconColor: Colors.black,
              showBackspaceButton: false,
            ),
            emojiViewConfig: EmojiViewConfig(
              columns: 15,
            ),
            searchViewConfig: SearchViewConfig(
              buttonIconColor: Colors.white,
              backgroundColor: Colors.white,
              buttonColor: Colors.black,
            ),
          ),
          onEmojiSelected: (category, emoji) {
            setState(() {
              messageController.text += emoji.emoji;
            });
          },
        ),
      );
    }
  }
}
