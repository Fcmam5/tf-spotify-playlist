locals {
  song_urls = { for song in var.songs : song.url => song }
  song_ids  = [for song in data.spotify_track.lazy_songs : song.id]
}

data "spotify_track" "lazy_songs" {
  for_each = local.song_urls
  url      = each.value.url
}

resource "spotify_playlist" "the-lazy-playlist" {
  name        = "The other lazy playlist"
  description = "A lazy playlist only managed (or abandoned) by Terraform"
  public      = true # So brave, isn't?

  tracks = local.song_ids
}
