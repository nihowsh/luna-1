# Render Deployment Setup

This Discord bot requires `yt-dlp` and `ffmpeg` for video downloading functionality.

## Required System Dependencies

Your Render service needs the following system packages installed:

1. **yt-dlp** - For downloading videos from YouTube, TikTok, Instagram, etc.
2. **ffmpeg** - For video compression and processing

## Installation on Render

### Option 1: Using Build Command

Add this to your Render service's **Build Command**:

```bash
apt-get update && apt-get install -y ffmpeg python3-pip && pip3 install yt-dlp && npm install
```

### Option 2: Using a Shell Script

Create a file named `render-build.sh` in your project root:

```bash
#!/bin/bash
apt-get update
apt-get install -y ffmpeg python3-pip
pip3 install yt-dlp
npm install
```

Then set your Build Command to:
```bash
bash render-build.sh
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
