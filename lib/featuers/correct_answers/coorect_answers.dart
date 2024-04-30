import 'package:flutter/material.dart';
import 'package:untitled/core/utils/text.dart';
import 'package:untitled/core/widgets/appbar.dart';
import 'package:untitled/featuers/correct_answers/widgets/check_answer_body.dart';

import '../home/data/question_model.dart';

class CorrectAnswerScreen extends StatelessWidget {
  const CorrectAnswerScreen({super.key,required this.questions });
  final List<QuestionModel> questions;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        flexibleSpace:  CustomAppBar(name: AppText.checkanswers),
      ),
      body: CheckAnswerBody(questions: questions),
    );

  }
}
