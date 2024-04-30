import 'package:flutter/material.dart';
import 'package:untitled/core/utils/App.colors.dart';
import 'package:untitled/core/utils/text.dart';
import 'package:untitled/featuers/home/data/question_model.dart';
import 'package:untitled/featuers/home/views/widgets/custom_result_dialog.dart';
import 'package:untitled/featuers/home/views/widgets/divider.dart';

class CustomHomeBody extends StatefulWidget{
  @override
  State<CustomHomeBody> createState() => _CustomHomeBodyState();
}

class _CustomHomeBodyState extends State<CustomHomeBody> {

  @override
List<QuestionModel> questions=[
  QuestionModel (correctAnswer:"black",answers:["red","black","blue","green"],title:"what is your favorite color",selectedAnswer:null),
    QuestionModel (correctAnswer:"hend",answers:["sara","hend","merna","rawan"],title:"what is your name",selectedAnswer:null),
    QuestionModel (correctAnswer:"20",answers:["20","21","22"],title:"what is your age",selectedAnswer:null),







  ];
  icreaseindex(){
    if(questionIndex<questions.length-1){
      questionIndex++;
      setState(() {

      });
    }
  }


  changeSelectedAnswerToNull(){
    for(int i=0;i<questions.length;i++){
      questions[i].selectedAnswer=null;
    }
  }
  int score=0;
  CheckScore(){
    for(int i=0;i<questions.length;i++){
      if(questions[i].correctAnswer==questions[i].selectedAnswer){
        score+=10;
      }
    }

  }
  int questionIndex=0;

  plusQuestionIndex(){
    if(questionIndex <questions.length-1 ) {

      if (questions[questionIndex].selectedAnswer != null) {
        questionIndex++;
        setState(() {

        });

      }
      else{
        ScaffoldMessenger.of(context).showSnackBar( const SnackBar(
          content: Text("choose answer please"),


        ));
      }

    }
    else{
      CheckScore();
      showDialog(context: context, builder: (cont){
        return CustomResultDialog(
          questions: questions,
            score: score,
        length: questions.length,
            click :(){
              questionIndex=0;
              score=0;
              changeSelectedAnswerToNull();
              Navigator.pop(context);
              setState(() {

              });
        });


      });
    }
  }


 /* List<Map<String,dynamic>>questions=[
    {
      "title":"question1",
      "answers":["a1","a2","a3"],
      "correctAnswer":"1",
      "selectedAnswer":null

    },
      {
      "title":"question1",
       "answers":["a3","a5","a6"],
         "correctAnswer":"a6",
          "selectedAnswer":null

       },
      {
     "title":"question1",
     "answers":["a8","a9","a10"],
         "correctAnswer":"a9",
      "selectedAnswer":null

       },




  ];

  int score=0;

  checkanswers(){
    for(int i=0;i<questions.length;i++){
      if(questions[i]["correctAnswer"]==questions[i]["selectedAnswe"]){
        score+=10;
      }
    }
  }

  int questionIndex=0;

  plusQuestionIndex(){
    if(questionIndex<questions.length-1){
      if(questions[questionIndex]["selectedAnswer"]!=null){
        questionIndex++;
        setState(() {

        });


      }
      else{
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("chose answer requierd!")));
      }


    }else{
      checkanswers();





    }
  }*/

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          SizedBox(height: 45),
          Text(questions[questionIndex].title,
            style: TextStyle(
              color: AppColors.primaryColor,
              fontWeight: FontWeight.w700,
              fontSize: 14,
            ),
            textAlign: TextAlign.right,
          ),
          SizedBox(height: 14,),
          CustomDivider(),
          ...questions[questionIndex].answers.map(
                  (answer) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    Text(answer),


                    Radio(
                      activeColor: AppColors.primaryColor,
                      value: answer,
                      groupValue: questions[questionIndex].selectedAnswer,
                      onChanged: (x) {
                        questions[questionIndex].selectedAnswer = x;
                        setState(() {

                        });
                      },
                    ),


                  ],

                );
              }
          ),
          CustomDivider(),
          SizedBox(height: 14,),
          TextButton(

            style: ButtonStyle(
              shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(8),)),
              backgroundColor: MaterialStateProperty.all(AppColors.primaryColor)
            ),
              onPressed: (){
              plusQuestionIndex();
              }, child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 20.0
            ),
            child: Text(
              questionIndex==questions.length-1 ? AppText.send:AppText.next,
              style: TextStyle(
                color: Colors.white
              ),
            ),
          )),
          Text("(${questionIndex+1}/${questions.length})",
          style: TextStyle(
            fontSize: 20,
            color: AppColors.primaryColor,
          ),


          )]
    );
  }}