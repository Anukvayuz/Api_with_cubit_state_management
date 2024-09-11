import 'package:api_handling_with_cubit/data/model/post_model.dart';
import 'package:api_handling_with_cubit/data/model/repository/post_repository.dart';
import 'package:api_handling_with_cubit/logic/post_cubit/post_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PostCubit extends Cubit<PostState> {
  PostCubit() : super(PostLoadingState()) {
    fetchPosts();
  }

  PostRepository postRepository = PostRepository();

  void fetchPosts() async {
    try {
      List<Model> posts = await PostRepository().fetchPosts();
      emit(PostLoadedState(posts));
    } catch (ex) {
      emit(PostErrorState(ex.toString()));
    }
  }
}
