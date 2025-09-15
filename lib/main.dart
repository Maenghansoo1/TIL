import 'package:flutter/material.dart';

void main() => runApp(DogAdoptionApp());

class DogAdoptionApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '강아지 분양 웹앱',
      theme: ThemeData(primarySwatch: Colors.orange),
      home: DogListPage(),
    );
  }
}

class Dog {
  final String name;
  final String imageUrl;
  final String description;

  Dog({required this.name, required this.imageUrl, required this.description});
}

class DogListPage extends StatelessWidget {
  final List<Dog> dogs = [
    Dog(
      name: '보리',
      imageUrl: 'https://images.unsplash.com/photo-1558788353-f76d92427f16',
      description: '활발하고 사람을 좋아하는 2살 푸들입니다.',
    ),
    Dog(
      name: '초코',
      imageUrl: 'https://images.unsplash.com/photo-1560807707-8cc77767d783',
      description: '조용하고 순한 1살 포메라니안입니다.',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('강아지 분양 리스트')),
      body: ListView.builder(
        itemCount: dogs.length,
        itemBuilder: (context, index) {
          final dog = dogs[index];
          return Card(
            margin: EdgeInsets.all(12),
            child: Column(
              children: [
                Image.network(dog.imageUrl),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    dog.name,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text(dog.description),
                ),
                SizedBox(height: 8),
                ElevatedButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('${dog.name} 분양 신청 완료!')),
                    );
                  },
                  child: Text('분양하기'),
                ),
                SizedBox(height: 12),
              ],
            ),
          );
        },
      ),
    );
  }
}
