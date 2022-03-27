import 'package:course_app_ui/model/my_exam_models/my_exam_banks_model.dart';
import 'package:course_app_ui/widgets/my_exam/web/choose_mcq_bank/mid_section_mcq_banks.dart';
import 'package:course_app_ui/widgets/web/navigation_bar/bottom_navigation.dart';
import 'package:course_app_ui/widgets/web/navigation_bar/navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class ChooseMyExamMCQBankPageWeb extends StatelessWidget {
  final String subjectID;
  final List<Result> mcqBanks;
  final String token;
  const ChooseMyExamMCQBankPageWeb({Key? key, required this.subjectID, required this.mcqBanks, required this.token}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.backgroundColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const CustomNavigationBar(),
            MidSectionMCQBanks(mcqBanks: mcqBanks, subjectID: subjectID, token: token,),
            const BottomNavigation(),
          ],
        ),
      ),
    );
  }
}
