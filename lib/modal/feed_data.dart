class FeedDataItem {
  final String title;
  final String commentTitle;
  final String commentReplyTitle;
  final String titleSubPart;
  final String commentTitleSubPart;
  final String commentReplyTitleSubPart;
  final String actionTitle;
  final String height;
  final String weight;
  final String description;
  final String subDescription;
  final String commentSubDescription;
  final String commentReplySubDescription;
  final List<String> tagList;
  final String imageUrl;
  final int commentCount;
  final int likeCount;

  FeedDataItem({
    required this.title,
    required this.commentTitle,
    required this.commentReplyTitle,
    required this.titleSubPart,
    required this.commentTitleSubPart,
    required this.commentReplyTitleSubPart,
    required this.actionTitle,
    required this.height,
    required this.weight,
    required this.description,
    required this.subDescription,
    required this.commentSubDescription,
    required this.commentReplySubDescription,
    required this.tagList,
    required this.imageUrl,
    required this.commentCount,
    required this.likeCount,
  });
}
