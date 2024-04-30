import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/core/utils/App.colors.dart';
import 'package:untitled/featuers/home/data/question_model.dart';
import 'package:untitled/featuers/home/views/widgets/divider.dart';

class CheckAnswerWidget extends StatelessWidget {
  const CheckAnswerWidget (
      {
        super.key,required this.questionModel});
  final QuestionModel questionModel;

  @override
  Widget build(BuildContext context) {
    return Column(

      crossAxisAlignment: CrossAxisAlignment.start,
      children: [





        SizedBox(height: 10, ),
        Text(questionModel.title,style: TextStyle(fontSize: 20,color: AppColors.primaryColor),),
        SizedBox(height: 10,),
        CustomDivider(),
        SizedBox(height: 10,),
        Wrap(
          children: [
    ...questionModel.answers.map((answer) =>
    SizedBox(
    width: MediaQuery.of(context).size.width/2 -60,
    child: Text(
    answer,
    style:  TextStyle(

    color:
     questionModel.correctAnswer == answer ?
    Colors.green:
        questionModel.correctAnswer!= questionModel.selectedAnswer&&
    questionModel.selectedAnswer==answer?
    Colors.red:
    Colors.black

    ),
    ),
    )
    )

    ]
        )

      ],

    );

  }
}
