class NewsDetail {
  final int newsId;
  final String newsTitle;
  final String newsContent;

  NewsDetail({
    required this.newsId,
    required this.newsTitle,
    required this.newsContent,
  });

  factory NewsDetail.fromMap(Map<String, dynamic> map) {
    return NewsDetail(
      newsId: map["newsId"],
      newsTitle: map["newsTitle"],
      newsContent: map["newsContent"],
    );
  }

  factory NewsDetail.dummy() {
    return NewsDetail(
      newsId: 1,
      newsTitle: "Legenda Situ Bagendit",
      newsContent: "Amet dolore ea ullamco labore et ullamco nisi aliqua ad aliquip. Excepteur eiusmod fugiat ut amet sint aliqua mollit dolor cillum anim fugiat dolore. Mollit aliqua esse est exercitation tempor. Anim quis ipsum esse do consectetur laboris minim fugiat enim fugiat proident irure est. Dolore velit ex quis proident sint anim commodo et cupidatat consequat nulla amet. Aliquip fugiat dolor anim pariatur enim ad sunt dolor eu culpa reprehenderit tempor dolore. Proident consectetur officia in exercitation in.",
    );
  }
}
