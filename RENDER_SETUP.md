# Render Deployment - Complete Setup

## Step 1: Push to GitHub

```bash
git add .
git commit -m "Add Docker support"
git push origin main
```

## Step 2: Create Service on Render

1. Go to https://dashboard.render.com
2. Click **New +** → **Web Service**
3. Connect your GitHub repo
4. Settings:
   - **Environment:** `Docker`
   - **Instance Type:** `Free`

## Step 3: Environment Variables (IMPORTANT!)

Add these in Render → Environment tab:

**Required:**
- `BOT_TOKEN` = Your Discord bot token

**Optional:**
- `OWNER_ID` = Your Discord user ID
- `PASSCODE` = A password for bot commands

## Step 4: Deploy

Click **Create Web Service**

---

## ✅ This Fixes:
- ✅ ffmpeg installed
- ✅ yt-dlp installed
- ✅ /downloadvideo works for YouTube, TikTok, Instagram, RedGifs

## Environment Variable Names:
- Use `BOT_TOKEN` (NOT `DISCORD_TOKEN`)
