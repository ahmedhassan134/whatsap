import 'package:flutter/material.dart';
import 'package:whatsapp_new/models/obj/message_ob.dart';
import 'package:whatsapp_new/models/obj/statues_ob.dart';

class Statues extends StatelessWidget {
  const Statues({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsetsDirectional.only(start: 8),
        child: Column(
          children: [
            SizedBox(
              height: 40,
              child: Column(
                children: [
                  Row(
                    children: [
                      const CircleAvatar(
                        radius: 20,
                        backgroundImage:
                            AssetImage('assets/images/statues/ahmed.jpg'),
                      ),
                      const SizedBox(
                        width: 6,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text('My statues'),
                          Text('Today at 8:20 pm')
                        ],
                      ),
                      const Spacer(
                        flex: 1,
                      ),
                      const Padding(
                        padding: EdgeInsetsDirectional.only(end: 8),
                        child: Text(
                          '...',
                          style: TextStyle(fontSize: 30),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Expanded(
                child: ListView.separated(
                    separatorBuilder: (context, ind) {
                      return Divider();
                    },
                    itemCount: Stu.length,
                    itemBuilder: (context, index) {
                      return Row(
                        children: [
                          CircleAvatar(
                              radius: 30,
                              backgroundImage: AssetImage(Stu[index].imgAss)),
                          const SizedBox(
                            width: 9,
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(Stu[index].text1),
                              Text(Stu[index].text2)
                            ],
                          ),
                        ],
                      );
                    }))
          ],
        ),
      ),
    );
  }
}
