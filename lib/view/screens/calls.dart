import 'package:flutter/material.dart';
import 'package:whatsapp_new/models/obj/calls_ob.dart';

class Calls extends StatelessWidget {
  const Calls({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.separated(
            itemBuilder: (context, index) {
              return Row(
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage(cal[index].imgAss),
                  ),
                  const SizedBox(
                    width: 7,
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(cal[index].text),
                      Row(
                        children: [
                          const Icon(
                            Icons.arrow_forward,
                            color: Colors.green,
                          ),
                          Text(cal[index].text2)
                        ],
                      )
                    ],
                  ),
                  const Spacer(
                    flex: 1,
                  ),
                  const Padding(
                    padding: EdgeInsetsDirectional.only(end: 10),
                    child: Icon(Icons.video_call),
                  )
                ],
              );
            },
            separatorBuilder: (context, ind) {
              return const Divider();
            },
            itemCount: cal.length));
  }
}
