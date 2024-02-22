import 'package:flutter/material.dart';
import 'package:task_tender/shared/theme.dart';
import 'package:task_tender/ui/widgets/custom_button.dart';
import 'package:task_tender/ui/widgets/custom_form_field.dart';

class DetailAssign extends StatelessWidget {
  const DetailAssign({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController startController = TextEditingController();
    TextEditingController endController = TextEditingController();
    TextEditingController taskNameController = TextEditingController();
    TextEditingController descriptionController = TextEditingController();
    void showAddTaskDialog() {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(
              'New Task',
              style: primaryText.copyWith(fontWeight: bold, fontSize: 18),
              textAlign: TextAlign.center,
            ),
            content: SingleChildScrollView(
              child: Column(
                children: [
                  CustomFormField(
                    hintText: 'Input Start',
                    label: 'Start',
                    validator: 'Please input Start',
                    textController: startController,
                  ),
                  const SizedBox(
                    height: 21,
                  ),
                  CustomFormField(
                    hintText: 'Input End',
                    label: 'End',
                    validator: 'Please input End',
                    textController: endController,
                  ),
                  const SizedBox(
                    height: 21,
                  ),
                  CustomFormField(
                    hintText: 'Input task name',
                    label: 'Task Name',
                    validator: 'Please input task name',
                    textController: taskNameController,
                  ),
                  const SizedBox(
                    height: 21,
                  ),
                  CustomFormField(
                    hintText: 'Input description',
                    label: 'Description',
                    validator: 'Please input description',
                    textController: descriptionController,
                  ),
                ],
              ),
            ),
            actions: [
              CustomButton(
                isFit: false,
                buttonColor: primaryColor,
                buttonText: 'Add Task',
                textStyle: whiteText.copyWith(
                  fontWeight: medium,
                  fontSize: 12,
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
      );
    }

    Widget content() {
      return Stack(
        children: [
          Image.asset(
            'assets/assign.png',
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Container(
            padding: const EdgeInsets.only(
                left: 30, right: 30, top: 24, bottom: 100),
            margin: const EdgeInsets.only(top: 226),
            width: double.infinity,
            decoration: BoxDecoration(
                color: backgroundColor,
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(36),
                    topRight: Radius.circular(36))),
            child: Column(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Gardener',
                      style: blackText.copyWith(
                        fontWeight: medium,
                        fontSize: 14,
                      ),
                    ),
                    const SizedBox(
                      height: 2,
                    ),
                    Text(
                      'Nyai Tantrum',
                      style: blackText.copyWith(
                        fontWeight: bold,
                        fontSize: 22,
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                          color: secondaryColor,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(12))),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            '07 - 08',
                            style: darkGreyText.copyWith(fontWeight: bold),
                          ),
                          const SizedBox(
                            width: 12,
                          ),
                          Text(
                            'Cook for Breakfast',
                            style: darkGreyText.copyWith(
                                fontWeight: bold, fontSize: 12),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                          color: secondaryColor,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(12))),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  '12 - 13',
                                  style:
                                      darkGreyText.copyWith(fontWeight: bold),
                                ),
                                const SizedBox(
                                  width: 12,
                                ),
                                Text(
                                  'Cook for Lunch',
                                  style: darkGreyText.copyWith(
                                      fontWeight: bold, fontSize: 12),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 12,
                            ),
                            Text(
                              'Details',
                              style: blackText.copyWith(
                                  fontSize: 10, fontWeight: regular),
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.circle_outlined,
                                  color: blackColor,
                                  size: 10,
                                ),
                                const SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  'Sayur Lodeh',
                                  style: blackText.copyWith(
                                      fontWeight: regular, fontSize: 10),
                                )
                              ],
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.circle_outlined,
                                  color: blackColor,
                                  size: 10,
                                ),
                                const SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  'Buash Sirsak',
                                  style: blackText.copyWith(
                                      fontWeight: regular, fontSize: 10),
                                )
                              ],
                            )
                          ]),
                    ),
                    const SizedBox(height: 12),
                    Positioned(
                      left: 0,
                      right: 0,
                      bottom: 16,
                      child: CustomButton(
                        isFit: false,
                        buttonColor: primaryColor,
                        buttonText: 'Add Task',
                        textStyle: whiteText.copyWith(
                          fontWeight: medium,
                          fontSize: 12,
                        ),
                        onPressed: showAddTaskDialog,
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(child: content()),
    );
  }
}
