





import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:verification_code_builder/verification_code_builder.dart';



class Example extends StatelessWidget {
  //const VarificationCode({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('VerificationCode'),
        ),
        body: Container(
          child: Center(
            child:VerificationCode (

              length: 6, // Set the number of cells
              onCompleted: (String value) {
                print("Code is $value"); // Set a callback for the result
              },
              builder: (index, focus, textEditingController, pasteMethod) { // Construct your cell widget
                return _generateSingleDigit(index, focus, textEditingController, pasteMethod);
              },
            ),
          ),
        )
    );
  }

  Widget _generateSingleDigit(
      int index, // Cell index in VerificationCode widget
      FocusNode focus, // Focus for "this" cell. VerificationCode use it to manage focus of cells
      TextEditingController textEditingController, // Cell input handler
      PasteMethod pasteMethod // Paste mechanism. Use it for perform paste (e.g. using SelectionControls)
      ) {
    return Container(
      height: 48,
      width: 48,
      margin: EdgeInsets.only(left: 3),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(8)),
          //color: Colors.grey
    ),
      child: Center(
        child: TextField(
          // If you build your cell based on TextField...
          controller: textEditingController,
          // just insert textEditingController parameter here
          focusNode: focus,
          // and focus here
          autofocus: index == 0,
          // You can use index to perform autofocus on first cell
          // Use this custom SelectionControls widget for easily "native-like" paste experience
          selectionControls: VerificationSelectionControls.create(pasteMethod),
          inputFormatters: [
            FilteringTextInputFormatter.digitsOnly,
            LengthLimitingTextInputFormatter(1)
          ],
          keyboardType: TextInputType.number,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.black,
            fontSize: 30,
            fontWeight: FontWeight.w700,
          ),
          onChanged: (str) =>
          {
            if (str.isNotEmpty) {
              index == 5 ? FocusScope.of(createElement()).unfocus() : focus.nextFocus(),

            }
          },
        ),
      ),
    );
  }
  }








