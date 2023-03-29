import 'package:flutter/material.dart';

class InboxScreen extends StatelessWidget {
  InboxScreen({Key? key}) : super(key: key);
  List<Map<String, String>> _lstStories = [
    {
      'name': 'Jonh Doe',
      'profile':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSzHQv_th9wq3ivQ1CVk7UZRxhbPq64oQrg5Q&usqp=CAU'
    },
    {
      'name': 'Jonh Doe',
      'profile':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSzHQv_th9wq3ivQ1CVk7UZRxhbPq64oQrg5Q&usqp=CAU'
    },
    {
      'name': 'Jonh Doe',
      'profile':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSzHQv_th9wq3ivQ1CVk7UZRxhbPq64oQrg5Q&usqp=CAU'
    },
    {
      'name': 'Jonh Doe',
      'profile':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSzHQv_th9wq3ivQ1CVk7UZRxhbPq64oQrg5Q&usqp=CAU'
    },
    {
      'name': 'Jonh Doe',
      'profile':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSzHQv_th9wq3ivQ1CVk7UZRxhbPq64oQrg5Q&usqp=CAU'
    },
    {
      'name': 'Jonh Doe',
      'profile':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSzHQv_th9wq3ivQ1CVk7UZRxhbPq64oQrg5Q&usqp=CAU'
    }
  ];

  List<Map<String, String>> _lstChat = [
    {'name': "Jonh doe", 'text': "How are you today?", 'time': "2:00 PM"},
    {'name': "Jonh doe", 'text': "How are you today?", 'time': "2:00 PM"},
    {'name': "Jonh doe", 'text': "How are you today?", 'time': "2:00 PM"},
    {'name': "Jonh doe", 'text': "How are you today?", 'time': "2:00 PM"},
    {'name': "Jonh doe", 'text': "How are you today?", 'time': "2:00 PM"},
    {'name': "Jonh doe", 'text': "How are you today?", 'time': "2:00 PM"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Inbox'),
        ),
        body: Column(
          children: [
            SizedBox(
              height: 120,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: _lstStories.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.all(10),
                    child: Column(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.blue,
                          radius: 32,
                          child: CircleAvatar(
                            radius: 30,
                            backgroundImage:
                                NetworkImage(_lstStories[index]['profile']!),
                          ),
                        ),
                        Text(_lstStories[index]['name']!)
                      ],
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: _lstChat.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: CircleAvatar(
                      radius: 23,
                      child: CircleAvatar(
                        backgroundImage:
                            NetworkImage(_lstStories[index]['profile']!),
                      ),
                    ),
                    title: Text(_lstChat[index]['name']!),
                    subtitle: Text(_lstChat[index]['text']!),
                    trailing: Text(_lstChat[index]['time']!),
                  );
                },
              ),
            )
          ],
        ));
  }
}
