variable "spotify_api_key" {
  type        = string
  sensitive   = true
  description = "Set this as the APIKey that the authorization proxy server outputs"
}

variable "songs" {
  type = list(map(string))
  default = [
    {
      title = "Couch Potato (Parody of \"Lose Yourself\")",
      url   = "https://open.spotify.com/track/44Ji9MPhi1FL1hwZibSHAS?si=a187fa716bb74d57"
    },
    {
      title = "The Lazy song",
      url   = "https://open.spotify.com/track/386RUes7n1uM1yfzgeUuwp?si=e28c890dbba84479"
    },
    {
      title = "Cannapeace",
      url   = "https://open.spotify.com/track/18U5Nh0rWIent2SPWheV3H?si=aea96e4a9b3a422a"
    },
    {
      title = "Chkoupistane",
      url   = "https://open.spotify.com/track/2jo5uYaLBBZIYkrpOiUghE?si=378beb9ebc5947d3"
    }
  ]
}
