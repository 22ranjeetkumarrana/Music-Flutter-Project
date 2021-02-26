class SongModel
{
  String trackName,albumName,artistName;

  SongModel({
      this.trackName,
      this.albumName,
      this.artistName});


static SongModel fromJson(data)
{
  return SongModel(
    trackName : data['track_name'],
    albumName : data['album_name'],
    artistName : data['artist_name'],
  );
}
}