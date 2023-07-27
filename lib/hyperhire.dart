import 'package:hyperhire_assignment/modal/feed_data.dart';

class AppData {
  static const String iconAssetUrl = "assets/icons/";
  static const String bellIconUrl = "${iconAssetUrl}bell.svg";
  static const String cavatarAssetUrl = "${iconAssetUrl}cavatar.png";
  static const String customAvatarAssetUrl = "${iconAssetUrl}custom_avatar.png";
  static const String tickIconAssetUrl = "${iconAssetUrl}tick.svg";
  static String heartIconAssetUrl = "${iconAssetUrl}heart.svg";
  static String commentIconAssetUrl = "${iconAssetUrl}comment.svg";
  static String saveIconAssetUrl = "${iconAssetUrl}save.svg";
  static String threeDotIconAssetUrl = "${iconAssetUrl}three_dot.svg";
  static String imageIconAssetUrl = "${iconAssetUrl}image.svg";

  static List<FeedDataItem> mockData = [
    FeedDataItem(
      title: "안녕 나 응애",
      titleSubPart: "1일전",
      actionTitle: "팔로우",
      height: "153 cm",
      weight: "53 kg",
      description: "지난 월요일에 했던 이벤트 중 가장 괜찮은 상품 뭐야?",
      subDescription: '''지난 월요일에 2023년 S/S 트렌드 알아보기 이벤트 참석했던 팝들아~
혹시 어떤 상품이 제일 괜찮았어? 

후기 올라오는거 보면 로우라이즈? 그게 제일 반응 좋고 그 테이블이 
제일 재밌었다던데 맞아???

올해 로우라이즈가 트렌드라길래 나도 도전해보고 싶은데 말라깽이가
아닌 사람들도 잘 어울릴지 너무너무 궁금해ㅜㅜ로우라이즈 테이블에
있었던 팝들 있으면 어땠는지 후기 좀 공유해주라~~!''',
      tagList: [
        "#2023",
        "#TODAYISMONDAY",
        "#TOP",
        "#POPS!",
        "#WOW",
        "#ROW",
      ],
      imageUrl:
          "https://wjddnjs754.cafe24.com/web/product/small/202303/5b9279582db2a92beb8db29fa1512ee9.jpg",
      commentCount: 5,
      likeCount: 5,
      commentTitle: "안녕 나 응애",
      commentTitleSubPart: "1일전",
      commentSubDescription: '''어머 제가 있던 테이블이 제일 반응이 좋았나보네요🤭 
우짤래미님도 아시겠지만 저도 일반인 몸매 그 이상도 이하도
아니잖아요?! 그런 제가 기꺼이 도전해봤는데 생각보다
괜찮았어요! 오늘 중으로 라이브 리뷰 올라온다고 하니
꼭 봐주세용~! ''',
      commentReplyTitle: "ㅇㅅㅇ",
      commentReplyTitleSubPart: "1일전",
      commentReplySubDescription: '''오 대박! 라이브 리뷰 오늘 올라온대요? 챙겨봐야겠다''',
    ),
  ];
}
