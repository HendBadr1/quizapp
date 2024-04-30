import 'package:flutter/material.dart';

import 'package:untitled/core/utils/App.colors.dart';
import 'package:untitled/core/utils/text.dart';
import 'package:untitled/featuers/correct_answers/coorect_answers.dart';

import '../../data/question_model.dart';

class CustomResultDialog extends StatelessWidget {
  const CustomResultDialog({super.key,  required this.score, required this.length, this.click, required this.questions});

  final int score;
  final int length;
  final void Function()?  click ;
  final List<QuestionModel> questions;
  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.white,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [



          IconButton(onPressed: (  ) {
            Navigator.pop(context);
          }, icon: Icon(Icons.close)),


          Center(
            child: Container(
              padding: EdgeInsets.symmetric(
                  vertical: 32 ,
                  horizontal: 94
              ),
              decoration: BoxDecoration(
                  color: AppColors.containerGrey,
                  border: Border.all(
                      color: AppColors.primaryColor
                  )
              ),
              child: Column(


                children: [
                  Text(AppText.result),
                  Text("${score}/${length*10}") ,

                ],
              ),
            ),
          ),
          SizedBox(
              height: 24
          ),
          Center(
            child: GestureDetector(
              onTap: click ,
              child: Container(
                alignment: Alignment.center ,
                decoration: BoxDecoration(
                    border: Border.all(color: AppColors.primaryColor)
                ),
                child: Text(AppText.restest ,style:TextStyle(color: AppColors.primaryColor,)),
              ),
            ),
          ) ,
          SizedBox(
              height: 24
          ),
          MaterialButton(
            onPressed: ( ) {

              Navigator.push(context, MaterialPageRoute(builder: (C) {
                return CorrectAnswerScreen(
                  questions: questions,
                );
              }));
            } ,
            child:Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                border: Border.all(color: AppColors.primaryColor)
                ),
                child: Text("check your answers",style: TextStyle(color: AppColors.primaryColor)

              ),

            )


          )





    ]
      ),






    );




  }
}