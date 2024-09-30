abstract class PostStates {}

class InitialPostState extends PostStates {}

class LoadingPostState extends PostStates {}

class SuccessPostState extends PostStates {
  // final List<PostModel> posts;
  // SuccessPostState({required this.posts});
}

class FailurePostState extends PostStates {
  final String error;
  FailurePostState({required this.error});
}

class LikePostSuccessPostState extends PostStates {}

class LikePostFailurePostState extends PostStates {
  final String error;
  LikePostFailurePostState({required this.error});
}
