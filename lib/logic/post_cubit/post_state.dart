import 'package:api_handling_with_cubit/data/model/post_model.dart';

class PostState {}

class PostLoadingState extends PostState {}

class PostLoadedState extends PostState {
  final List<Model> posts;
  PostLoadedState(this.posts);
}

class PostErrorState extends PostState {
  final String error;
  PostErrorState(this.error);
}
