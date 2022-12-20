# Terraform Spotify playlist

Another abandoned project on Github, this time it's just a Spotify playlist made with Terraform provider following [Hashicorp's Terraform tutorials: Create a Spotify Playlist with Terraform](https://developer.hashicorp.com/terraform/tutorials/community-providers/spotify-playlist).

## Running this mess

0. Add secrets to `.env` (use `.env.example` and fill your values from [Spotify developer app](https://developer.spotify.com/dashboard/login))

1. Start spotify auth proxy

```
docker run --rm -it -p 27228:27228 --env-file ./.env ghcr.io/conradludgate/spotify-auth-proxy
```

2. Visit the authorization URL from the previous `docker run` command (The output is after `Auth URL`), Authorize your app then go back to the terminal and copy the `ApiKey` (also from the docker-run output).

3. You may use `terraform.tfvars` file to set `spotify_api_key` variable (see `terraform.tfvars.example`)


## License

This project is licensed under [GLWTPL](./LICENSE) license.
