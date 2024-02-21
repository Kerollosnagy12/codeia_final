import 'package:codeia_final/Ui/home/widget/chatbot_screen.dart';
import 'package:codeia_final/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChatBot extends StatefulWidget {
  const ChatBot({super.key});

  @override
  State<ChatBot> createState() => _ChatBotState();
}

class _ChatBotState extends State<ChatBot> {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, ChatScreen.routeName);
          },
          child: Image.asset(
            'assets/images/robot.png',
            width: 50.w,
            height: 50.h,
          ),
        ),
      ],
    );
  }
}
