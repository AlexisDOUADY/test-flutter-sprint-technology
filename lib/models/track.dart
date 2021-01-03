class Track {

  int id, rating;
  String name, albumName, artistName;
  bool hasLyrics;

  Track(this.id, this.name, this.rating, this.hasLyrics, this.albumName, this.artistName);

  static Track fromJson(Map json) {
    return Track(
      json["track_id"],
      json["track_name"],
      json["track_rating"],
      json["has_lyrics"],
      json["album_name"],
      json["artist_name"],
    );
  }

}