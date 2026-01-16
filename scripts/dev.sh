#!/bin/bash

echo "🚀 Starting Acquisition App in Development Mode"
echo "================================================"

if [ ! -f .env.development ]; then
    echo "❌ .env.development file not found"
    exit 1
fi

if ! docker info >/dev/null 2>&1; then
    echo "❌ Docker is not running"
    exit 1
fi

mkdir -p .neon_local

echo "📦 Building and starting development containers..."
docker compose -f docker-compose.dev.yml up --build -d

echo "⏳ Waiting for database..."
sleep 10

echo "📜 Syncing schema with Drizzle (dev-safe)..."
docker compose exec app npm run db:push

echo ""
echo "🎉 Development environment ready!"
echo "   Application: http://localhost:3000"
