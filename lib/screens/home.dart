import 'package:blog_app/single_child_example.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  /// what is Listview widget in flutter?
  /// Listview widget in flutter is a scrollable list of widgets arranged vertically.
  /// ListViewBuilder is a widget that builds its children on demand.
  /// ListView.separated is a widget that builds its children on demand and separates them with a separator.
  /// ListView.custom is a widget that builds its children on demand and separates them with a separator.

  final List lstFeeds = [
    {
      'name': 'Jonh doe',
      'time': '2 hour ago',
      'image':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSzHQv_th9wq3ivQ1CVk7UZRxhbPq64oQrg5Q&usqp=CAU',
      'text':
          "ListView.custom is a widget that builds its children on demand and separates them with a separator.",
      'imagePost':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSzHQv_th9wq3ivQ1CVk7UZRxhbPq64oQrg5Q&usqp=CAU'
    },
    {
      'name': 'Jonh doe',
      'time': '2 hour ago',
      'image':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSzHQv_th9wq3ivQ1CVk7UZRxhbPq64oQrg5Q&usqp=CAU',
      'text':
          "ListView.custom is a widget that builds its children on demand and separates them with a separator.",
      'imagePost':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSzHQv_th9wq3ivQ1CVk7UZRxhbPq64oQrg5Q&usqp=CAU'
    },
    {
      'name': 'Jonh doe',
      'time': '2 hour ago',
      'image':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSzHQv_th9wq3ivQ1CVk7UZRxhbPq64oQrg5Q&usqp=CAU',
      'text':
          "ListView.custom is a widget that builds its children on demand and separates them with a separator.",
      'imagePost':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSzHQv_th9wq3ivQ1CVk7UZRxhbPq64oQrg5Q&usqp=CAU'
    },
    {
      'name': 'Jonh doe',
      'time': '2 hour ago',
      'image':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSzHQv_th9wq3ivQ1CVk7UZRxhbPq64oQrg5Q&usqp=CAU',
      'text':
          "ListView.custom is a widget that builds its children on demand and separates them with a separator.",
      'imagePost':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSzHQv_th9wq3ivQ1CVk7UZRxhbPq64oQrg5Q&usqp=CAU'
    },
    {
      'name': 'Jonh doe',
      'time': '2 hour ago',
      'image':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSzHQv_th9wq3ivQ1CVk7UZRxhbPq64oQrg5Q&usqp=CAU',
      'text':
          "ListView.custom is a widget that builds its children on demand and separates them with a separator.",
      'imagePost':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSzHQv_th9wq3ivQ1CVk7UZRxhbPq64oQrg5Q&usqp=CAU'
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: ListView.builder(
        itemCount: lstFeeds.length,
        itemBuilder: (context, index) {
          return CardFeedReusable(
            name: lstFeeds[index]['name'],
            time: lstFeeds[index]['time'],
            image: lstFeeds[index]['image'],
            text: lstFeeds[index]['text'],
            imagePost: lstFeeds[index]['imagePost'],
          );
        },
      ),
    );
  }
}

class CardFeedReusable extends StatelessWidget {
  final String name;
  final String time;
  final String image;
  final String text;
  final String imagePost;

  const CardFeedReusable({
    super.key,
    required this.name,
    required this.time,
    required this.image,
    required this.text,
    required this.imagePost,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => SingleChildExample()));
      },
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Row(
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: NetworkImage(image),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            name,
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Row(
                            children: [
                              Text(
                                time,
                                style:
                                    TextStyle(color: Colors.blue, fontSize: 9),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: Icon(Icons.public, size: 9),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Spacer(),
                Icon(Icons.more_horiz),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              text,
              style: TextStyle(fontSize: 15),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Image.network(
              imagePost,
              fit: BoxFit.cover,
              height: 300,
              width: double.infinity,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Row(
              children: [
                Icon(Icons.thumb_up),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Text('Like'),
                ),
                Icon(Icons.comment),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Text('Comment'),
                ),
                Icon(Icons.share),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Text('Share'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
