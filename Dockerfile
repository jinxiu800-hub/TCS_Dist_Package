# Use a Python 3.12 slim image to keep it lightweight
FROM python:3.12-slim

# Set environment variables
ENV PYTHONUNBUFFERED=1 \
    PYTHONDONTWRITEBYTECODE=1 \
    DISPLAY=:99 \
    CRAYON_SENSITIVE=true

# Install system dependencies for Playwright, pywebview, and Xvfb
RUN apt-get update && apt-get install -y --no-install-recommends \
    wget \
    gnupg \
    xvfb \
    xauth \
    x11-xserver-utils \
    libgl1-mesa-glx \
    libnss3 \
    libatk1.0-0 \
    libatk-bridge2.0-0 \
    libcups2 \
    libdrm2 \
    libdbus-1-3 \
    libexpat1 \
    libfontconfig1 \
    libgbm1 \
    libgcc1 \
    libgdk-pixbuf2-0 \
    libglib2.0-0 \
    libgtk-3-0 \
    libnspr4 \
    libpango-1.0-0 \
    libpangocairo-1.0-0 \
    libstdc++6 \
    libx11-6 \
    libx11-xcb1 \
    libxcomposite1 \
    libxcursor1 \
    libxdamage1 \
    libxext6 \
    libxfixes3 \
    libxi6 \
    libxrandr2 \
    libxrender1 \
    libxss1 \
    libxtst6 \
    ca-certificates \
    fonts-liberation \
    lsb-release \
    && rm -rf /var/lib/apt/lists/*

# Set the working directory
WORKDIR /app

# Create a non-root user for security and browser compatibility
RUN useradd -m tcsuser
USER tcsuser

# Copy requirements first to leverage Docker layer caching
COPY --chown=tcsuser:tcsuser requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Install Playwright browser kernels
RUN playwright install chromium

# Copy the rest of the project files
COPY --chown=tcsuser:tcsuser . .

# Make entrypoint executable
USER root
RUN chmod +x /app/entrypoint.sh
USER tcsuser

# Use entrypoint script to initialize Xvfb before starting the app
ENTRYPOINT ["/app/entrypoint.sh"]
