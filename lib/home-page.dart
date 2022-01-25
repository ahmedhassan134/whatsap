import 'package:flutter/material.dart';
import 'package:whatsapp_new/view/screens/calls.dart';
import 'package:whatsapp_new/view/screens/camera.dart';
import 'package:whatsapp_new/view/screens/message.dart';
import 'package:whatsapp_new/view/screens/statues.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: Text('WhatsApp'),
          actions: [
            const Icon(Icons.search),
            PopupMenuButton(
                itemBuilder: (_) => const <PopupMenuItem<String>>[
                      PopupMenuItem<String>(
                          child: Text('New group'), value: 'Doge'),
                      PopupMenuItem<String>(
                          child: Text('New broadcast'), value: 'New broadCast'),
                      PopupMenuItem<String>(
                          child: Text('Linked device'), value: 'linked device'),
                      PopupMenuItem<String>(
                          child: Text('Started messages'),
                          value: 'started messages '),
                      PopupMenuItem<String>(
                          child: Text('setting'), value: 'settings'),
                    ])
          ],
          bottom: const TabBar(
            tabs: [
              Tab(
                text: 'CHATS',
              ),
              Tab(
                text: 'STATUS',
              ),
              Tab(
                text: 'CALLS',
              ),
              Tab(
                icon: Icon(
                  Icons.camera_alt,
                  color: Colors.whiteg,
                ),
              ),
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsetsDirectional.only(top: 10),
          child: TabBarView(
            children: [
              Message(),
              Statues(),
              Calls(),
              Camera(),
            ],
          ),
        ),
      ),
    );
  }
}
