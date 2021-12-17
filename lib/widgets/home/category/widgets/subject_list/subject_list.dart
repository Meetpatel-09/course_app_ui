import 'package:course_app_ui/model/course_model.dart';
import 'package:course_app_ui/widgets/home/category/widgets/subject_list/widgets/explore_more.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class SubjectList extends StatelessWidget {
  final List<Subject> subjectList;
  final int index;
  final Color catColor;
  const SubjectList({Key? key, required this.subjectList, required this.index, required this.catColor,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(15.0),
        margin: const EdgeInsets.only(right: 15),
        width: MediaQuery.of(context).size.width / 2,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          border: Border.all(color: catColor),
          //   border: Border(bottom: BorderSide(width: 1, color: catColor)),
          color: context.backgroundColor
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Text(subjectList[index].subject.toString(),
                        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
            ),

            ExploreMore(subjectList: subjectList, catColor: catColor,),
          ],
        ),
        // child: Column(
        //   crossAxisAlignment: CrossAxisAlignment.start,
        //   mainAxisAlignment: MainAxisAlignment.center,
        //   children: [
        //     Row(
        //       crossAxisAlignment: CrossAxisAlignment.start,
        //       children: [
        //         const Text("Subject ID:",
        //             style:
        //             TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
        //         Text(subjectList[index].subjectid.toString(),
        //             style: const TextStyle(fontSize: 18)),
        //       ],
        //     ),
        //     const SizedBox(height: 5,),
        //     Row(
        //       crossAxisAlignment: CrossAxisAlignment.start,
        //       children: [
        //         const Text("C ID:",
        //             style:
        //             TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
        //         Text(subjectList[index].cid.toString(), style: const TextStyle(fontSize: 18)),
        //       ],
        //     ),
        //     const SizedBox(height: 5,),
        //     Row(
        //       crossAxisAlignment: CrossAxisAlignment.start,
        //       children: [
        //         const Text("Subject Name: ",
        //             style:
        //             TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
        //         Text(subjectList[index].subject.toString(),
        //             style: const TextStyle(fontSize: 18)),
        //       ],
        //     ),
        //     const SizedBox(height: 5,),
        //     Row(
        //       crossAxisAlignment: CrossAxisAlignment.start,
        //       mainAxisAlignment: MainAxisAlignment.start,
        //       children: [
        //         const Text("Subject Status: ",
        //             style:
        //             TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
        //         Text(subjectList[index].subjectStatus.toString(),
        //             style: const TextStyle(fontSize: 18)),
        //       ]
        //     ),
        //     const SizedBox(height: 5,),
        //     const Text("Subject create date:",
        //         style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
        //     Text(subjectList[index].subjectCreatedat.toString(),
        //         style: const TextStyle(fontSize: 18)),
        //     const SizedBox(height: 5,),
        //     Row(
        //       crossAxisAlignment: CrossAxisAlignment.start,
        //       mainAxisAlignment: MainAxisAlignment.start,
        //       children: [
        //         const Text("Category:",
        //             style:
        //             TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
        //         Text(subjectList[index].category.toString(), style: const TextStyle(fontSize: 18)),
        //       ],
        //     ),
        //     const SizedBox(height: 5,),
        //     Row(
        //         crossAxisAlignment: CrossAxisAlignment.start,
        //         mainAxisAlignment: MainAxisAlignment.start,
        //         children: [
        //           const Text("category Status: ",
        //               style:
        //               TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
        //           Text(subjectList[index].categoryStatus.toString(),
        //               style: const TextStyle(fontSize: 18)),
        //         ]
        //     ),
        //     const SizedBox(height: 5,),
        //     const Text("category Create date:",
        //         style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
        //     Text(subjectList[index].categoryCreatedat.toString(),
        //         style: const TextStyle(fontSize: 18)),
        //     // const SizedBox(height: 5,),
        //     Container(
        //       alignment: Alignment.bottomRight,
        //       width: MediaQuery.of(context).size.width / 1.8,
        //       child: TextButton(
        //           onPressed: () {
        //             Navigator.push(
        //                 context,
        //                 MaterialPageRoute(
        //                   builder: (context) => SubjectDetailsPage(subjectList: subjectList,),
        //                 ));
        //           },
        //           child: Text('View All',
        //             style: TextStyle(
        //                 fontSize: 17,
        //                 fontWeight: FontWeight.bold,
        //                 color: catColor),
        //           )
        //       )
        //     )
        //   ],
        // ),
      );
  }
}
