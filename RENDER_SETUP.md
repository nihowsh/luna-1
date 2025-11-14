# Render Deployment Setup Guide

This Discord bot requires `yt-dlp` and `ffmpeg` for the `/downloadvideo` command to work.

## Quick Setup (Recommended)

I've created a `render-build.sh` script that automatically installs all dependencies.

### Step-by-Step Instructions:

1. **Push your code to GitHub** (make sure `render-build.sh` is included)

2. **In Render Dashboard**, configure your service:
   - **Build Command**: `bash render-build.sh`
   - **Start Command**: `node bot.js`
   - **Environment**: Node

3. **Add Environment Variables** in Render:
   - `DISCORD_TOKEN` = Your Discord bot token

4. **Deploy!**

That's it! The build script will automatically install:
- ✅ ffmpeg (for video compression)
- ✅ yt-dlp (for downloading videos)
- ✅ npm packages

## Alternative: Manual Build Command

If you prefer not to use the script, set your **Build Command** to:

```bash
apt-get update && apt-get install -y ffmpeg python3-pip && pip3 install yt-dlp && npm install
```

## Render Service Configuration

1. **Build Command**: Use one of the options above
2. **Start Command**: `node bot.js`
3. **Environment**: Node
4. **Plan**: Make sure you have enough resources (Free tier should work)

## Environment Variables

Make sure to set your Discord bot token in Render's environment variables:
- `DISCORD_TOKEN` - Your Discord bot token

## Testing Locally

To test video downloads locally on Replit:
1. The dependencies are already installed
2. Set your Discord token
3. Use the `/downloadvideo` command with links from:
   - YouTube
   - TikTok
   - Instagram
   - RedGifs

## Troubleshooting

If you still get "spawn yt-dlp ENOENT" error on Render:
1. Check that the build command ran successfully in Render logs
2. Verify yt-dlp is in the PATH: add `which yt-dlp` to your start command temporarily
3. Try using the full path: `/usr/local/bin/yt-dlp` instead of just `yt-dlp`

## Supported Platforms

The `/downloadvideo` command supports:
- ✅ YouTube
- ✅ TikTok
- ✅ Instagram
- ✅ RedGifs (using direct API)
- ✅ Any platform supported by yt-dlp
