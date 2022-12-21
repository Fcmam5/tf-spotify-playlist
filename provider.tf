terraform {
  cloud {
    organization = "playground-dev"

    workspaces {
      name = "spotify"
    }
  }

  required_providers {
    spotify = {
      source  = "conradludgate/spotify"
      version = "~> 0.2.7"
    }
  }


}

provider "spotify" {
  api_key = var.spotify_api_key
}
