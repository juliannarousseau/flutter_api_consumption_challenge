// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class PostItem extends StatelessWidget {
  final String title;
  final String body;

  const PostItem({super.key, required this.title, required this.body});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(8),
          color: Colors.white,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text(body),
            ],
          ),
        ),
      ),
    );
  }
}
