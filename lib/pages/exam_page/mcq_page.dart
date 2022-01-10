import 'package:course_app_ui/model/course_model.dart';
import 'package:course_app_ui/widgets/exam/mcq_page/button_widget.dart';
import 'package:course_app_ui/widgets/exam/mcq_page/options_widget.dart';
import 'package:course_app_ui/widgets/exam/mcq_page/question_widget.dart';
import 'package:flutter/material.dart';
import 'package:course_app_ui/model/mcq_models/mcq_question_bank_model.dart' as mcq_questions;
import 'package:velocity_x/velocity_x.dart';

class MCQPage extends StatefulWidget {
  const MCQPage({Key? key}) : super(key: key);

  @override
  _MCQPageState createState() => _MCQPageState();
}

class _MCQPageState extends State<MCQPage> {
  List<Subject>? subjectList = [];
  int index = 0;
  String wantExamTimer = "No";
  String wantQuestionTimer = "No";
  String examTime = "notSet";
  String questionTime = "notSet";
  late String numQuestions;
  String token = "empty";
  int mbid = 0;
  late List<mcq_questions.Result> mcqQuestionBank = [];
  ValueChanged<String>? onClickedOptions;
  List<String> mcqOptionCodes = ["A", "B", "C", "D"];

  @override
  Widget build(BuildContext context) {
    final arg = ModalRoute.of(context)!.settings.arguments as Map;
    subjectList = arg['subjectList'];
    index = arg['index'];
    token = arg['token'];
    mbid = arg['mbid'];
    examTime = arg['examTime'];
    wantExamTimer = arg['wantExamTimer'];
    wantQuestionTimer = arg['wantQuestionTimer'];
    questionTime = arg['questionTime'];
    numQuestions = arg['numQuestions'];
    mcqQuestionBank = arg['mcqQuestionBank'];

    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            "Exam".text.make()
          ],
        ),
      ),
      backgroundColor: context.canvasColor,
      body: PageView.builder(
          itemCount: mcqQuestionBank.length,
          itemBuilder: (context, index) {
            final question = mcqQuestionBank[index];

            return buildQuestion(question: question, questionNumber: index + 1);
          },
        ),
    );
  }

  Widget buildQuestion({required mcq_questions.Result question, required int questionNumber}) {

      return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // const SizedBox(height: 10,),
          QuestionWidget(question: question.que, questionNumber: questionNumber),
          Expanded(
            child: OptionsWidget(
              question: question,
              onClickedOptions: selectOption,
              mcqOptionCodes: mcqOptionCodes,
            ),
          ),
          const ButtonWidget(),
        ],
    );
  }

  void selectOption(String option) {
    return;
  }
}
