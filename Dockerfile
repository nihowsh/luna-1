FROM node:20-alpine

# Install ffmpeg and yt-dlp
RUN apk update && apk add --no-cache \
    ffmpeg \
    python3 \
    py3-pip

# Install yt-dlp using pip
RUN pip3 install --no-cache-dir --break-system-packages yt-dlp

WORKDIR /app

# Copy package files
COPY package*.json ./

# Install npm dependencies
RUN npm ci --only=production

# Copy the rest of the application
COPY . .

# Start the bot
CMD ["node", "bot.js"]
