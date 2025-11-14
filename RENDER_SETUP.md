# Render Free Tier Deployment Guide

## ✅ This Works on Render's FREE Tier!

Your bot uses a **Dockerfile** to install `ffmpeg` and `yt-dlp`, which works perfectly on Render's free tier.

---

## 📋 Step-by-Step Instructions

### 1. **Push to GitHub**

Make sure these files are in your repository:
- ✅ `Dockerfile` (already created)
- ✅ `.dockerignore` (already created)
- ✅ `bot.js` and all other bot files
- ✅ `package.json`

```bash
git add .
git commit -m "Add Docker support for Render"
git push origin main
```

### 2. **Create Web Service on Render**

1. Go to [Render Dashboard](https://dashboard.render.com)
2. Click **"New +"** → **"Web Service"**
3. Connect your GitHub repository
4. Configure settings:

   **Name:** `your-discord-bot` (choose any name)
   
   **Environment:** `Docker`
   
   **Region:** Choose closest to you
   
   **Branch:** `main` (or your default branch)
   
   **Instance Type:** `Free`

5. Click **"Create Web Service"**

### 3. **Add Environment Variables**

In your Render service settings:

1. Go to **"Environment"** tab
2. Add your Discord token:
   - **Key:** `DISCORD_TOKEN`
   - **Value:** Your actual Discord bot token

3. Click **"Save Changes"**

### 4. **Deploy!**

Render will automatically:
- ✅ Build your Docker image (installs ffmpeg + yt-dlp)
- ✅ Deploy your bot
- ✅ Keep it running 24/7 (with some sleep after inactivity on free tier)

---

## 🎥 What's Included

The Dockerfile installs:
- ✅ **Node.js 20** (Alpine Linux - lightweight)
- ✅ **ffmpeg** (for video compression)
- ✅ **yt-dlp** (for downloading videos)
- ✅ All your npm packages

---

## 🔧 Supported Platforms

Your `/downloadvideo` command now works with:
- ✅ **YouTube**
- ✅ **TikTok**
- ✅ **Instagram**
- ✅ **RedGifs**
- ✅ Any platform yt-dlp supports

---

## ⚠️ Important Notes

### Free Tier Limitations:
- **Sleeps after 15 minutes** of inactivity
- **~50 second cold start** when waking up
- **512 MB RAM** limit

### Keep Your Bot Awake (Optional):
Use a service like [UptimeRobot](https://uptimerobot.com) to ping your bot every 14 minutes.

---

## 🐛 Troubleshooting

### Build Fails?
- Check Render logs in Dashboard → Logs
- Verify `Dockerfile` was pushed to GitHub
- Ensure you selected "Docker" as environment

### Bot Not Responding?
- Check Environment variables are set correctly
- Verify `DISCORD_TOKEN` is valid
- Check logs for errors

### Video Download Still Fails?
- Make sure you redeployed AFTER adding the Dockerfile
- Check Render logs to confirm ffmpeg and yt-dlp were installed
- Test with a simple YouTube link first

---

## ✨ You're Done!

Once deployed, your bot will work exactly like it does on Replit, with full video download support! 🎉
