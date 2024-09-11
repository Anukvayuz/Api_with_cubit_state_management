import 'package:api_handling_with_cubit/logic/post_cubit/post_cubit.dart';
import 'package:api_handling_with_cubit/presentation/screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  // PostRepository postRepository = PostRepository();
  // List<Model> postModel = await postRepository.fetchPosts();
  // log(postModel.toString() as num);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      return BlocProvider(
        create: (context) => PostCubit(),
        child: MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          home: const HomeScreen(),
        ),
      );
    });
  }
}
