import 'package:flutter/material.dart';
import 'package:note/constants.dart';
import 'package:note/views/widgets/custom_buttom.dart';
import 'package:note/views/widgets/custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 32,
            ),
            CustomTextField(
              hintText: 'Title',
            ),
            SizedBox(
              height: 16,
            ),
            CustomTextField(
              hintText: 'content',
              maxLines: 5,
            ),
            SizedBox(
              height: 16,
            ),
            CustomButtom(),
            SizedBox(
              height: 16,
            ),
          ],
        ),
      ),
    );
  }
}
