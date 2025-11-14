FROM node:20-slim

# Install ffmpeg, python3, and pip
RUN apt-get update && apt-get install -y \
    ffmpeg \
    python3 \
    python3-pip \
    && rm -rf /var/lib/apt/lists/*

# Install yt-dlp
RUN pip3 install --no-cache-dir --break-system-packages yt-dlp

WORKDIR /app

# Copy package files
COPY package*.json ./

# Install npm dependencies
RUN npm install --production

# Copy the rest of the application
COPY . .

# Expose port for keep-alive server
EXPOSE 10000

# Start the bot
CMD ["node", "bot.js"]
