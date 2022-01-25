import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_new/models/obj/message_ob.dart';
class Message extends StatelessWidget {
   Message({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(


      body: ListView.separated(
            separatorBuilder: (context, ind) {
              return Divider();
            },
            itemCount: Messages.length,
            itemBuilder: (context, index) {
              return Row(
                children: [
                  CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage(Messages[index].imgAsset)),
                  const SizedBox(
                    width: 9,
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(Messages[index].text1),
                      Text(Messages[index].text2)
                    ],
                  ),
                  const Spacer(
                    flex: 1,
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.only(end: 15),
                    child: Text(Messages[index].text3),
                  )
                ],
              );
            }));
  }
}
