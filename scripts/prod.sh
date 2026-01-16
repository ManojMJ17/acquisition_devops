
#!/bin/bash

echo "🚀 Starting Acquisition App in Production Mode"
echo "==============================================="

# Check if .env.production exists
if [ ! -f .env.production ]; then
    echo "❌ Error: .env.production file not found!"
    exit 1
fi

# Check if Docker is running
if ! docker info >/dev/null 2>&1; then
    echo "❌ Error: Docker is not running!"
    exit 1
fi

echo "📦 Building and starting production container..."
echo "   - Using Neon Cloud Database"
echo "   - Running in optimized production mode"
echo ""

# Start production environment
docker compose -f docker-compose.prod.yml up --build -d

echo ""
echo "🎉 Production environment started!"
echo "   Application: http://localhost:3000"
echo "   Logs: docker logs -f acquisition-app-prod"
echo ""
echo "⚠️  NOTE:"
echo "   Database migrations are NOT run automatically in production."
echo "   Run them manually only when schema changes:"
echo ""
echo "     npm run db:generate"
echo "     npm run db:migrate"
echo ""
echo "   (Run from host machine)"
