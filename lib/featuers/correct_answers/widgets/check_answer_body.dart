import 'package:flutter/cupertino.dart';
import 'package:untitled/featuers/correct_answers/widgets/check_answer_widget.dart';

import '../../home/data/question_model.dart';

class CheckAnswerBody extends StatelessWidget {
  const CheckAnswerBody({super.key,required this.questions});
  final List<QuestionModel> questions;



  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(30.0),
      child: ListView(
        children: [
          ...questions.map((questionModel) =>
            CheckAnswerWidget(questionModel: questionModel,)
          ),
        ],
      ),
    );
   
  }
}
