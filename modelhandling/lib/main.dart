import 'package:flutter/material.dart';
import 'package:modelhandling/finals/chat_screen.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(
    url: "https://jxdgzlmumykakrgbibyl.supabase.co",
    anonKey:"eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imp4ZGd6bG11bXlrYWtyZ2JpYnlsIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NzQzODkyNTMsImV4cCI6MjA4OTk2NTI1M30.6rolhljifCIMqr9idF7Hh7rHZBms8I61Hh7gQVz1u2E",
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      home: ChatPage(username: "John Doe",),
    );
  }
}