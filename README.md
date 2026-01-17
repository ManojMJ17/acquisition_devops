# 🚀 Acquisition API — Production-Ready Backend

A production-grade backend API built with **Node.js, Docker, Neon, and Drizzle ORM**, following real DevOps workflows with separate **development** and **production** environments.

This project demonstrates how modern backend systems are built, tested, containerized, and deployed.

---

🎥 Demo Videos:  
https://github.com/ManojMJ17/acquisition_devops/releases/tag/v1.0.0

---

---

## 🧠 Tech Stack

**Backend**

- Node.js
- Express
- PostgreSQL
- Drizzle ORM

**DevOps / Infra**

- Docker & Docker Compose
- Neon Local (Development)
- Neon Cloud (Production)

**Testing & Tools**

- Jest
- Postman
- Winston (Logging)
- Git & GitHub

---

## 📂 Project Structure

```

.
├── src/
│   ├── controllers/
│   ├── services/
│   ├── models/
│   ├── routes/
│   ├── middleware/
│   └── config/
├── drizzle/
├── scripts/
│   ├── dev.sh
│   └── prod.sh
├── logs/
├── docker-compose.dev.yml
├── docker-compose.prod.yml
├── Dockerfile
├── drizzle.config.js
└── package.json

```

---

## ⚙️ Environment Setup

### 1️⃣ Clone the Repository

```bash
git clone <your-repo-url>
cd acquisition_devops
```

---

### 2️⃣ Install Dependencies (Local)

```bash
npm install
```

---

## 🧪 Development Mode (Local Docker + Neon Local)

Uses **Neon Local** for an ephemeral development database.

### ▶️ Start Dev Environment

```bash
npm run dev:docker
```

This will:

- Start Neon Local
- Build & run Docker containers
- Apply database schema
- Start the API with hot reload

📍 App URL:

```
http://localhost:3000
```

---

## 🗄️ Database Commands (Drizzle)

### Generate schema from models

```bash
npm run db:generate
```

### Apply migrations

```bash
npm run db:migrate
```

### Open Drizzle Studio

```bash
npm run db:studio
```

---

## 🧪 API Testing

Use **Postman** to test endpoints:

- `POST /api/auth/sign-up`
- `POST /api/auth/sign-in`
- `GET /api/users/:id`
- `DELETE /api/users/:id`
- `GET /health`

---

## 🧪 Run Tests

```bash
npm test
```

Includes:

- API route tests
- Health checks
- Coverage report

---

## 🚀 Production Mode (Docker + Neon Cloud)

Uses **Neon Cloud** database (no local proxy).

### ▶️ Start Production Environment

```bash
sh ./scripts/prod.sh
```

Or manually:

```bash
docker compose -f docker-compose.prod.yml up --build -d
```

📍 App URL:

```
http://localhost:3000
```

### View Logs

```bash
docker logs -f acquisition-app-prod
```

---

## 🧾 Logging

Logs are stored in:

```
logs/combined.log
logs/error.log
```

Handled using **Winston** with environment-based transports.

---

## 🔐 Features

- Authentication & authorization
- Role-based access control
- Secure middleware
- Input validation with Zod
- Structured logging
- Environment separation (dev / prod)

---

## 📈 Learning Outcomes

- Dockerizing backend applications
- Managing local vs cloud databases
- Handling migrations safely
- Writing testable services
- Following real DevOps workflows

---

## 🤝 Author

**Manoj Kumar**

- LinkedIn: *www.linkedin.com/in/manoj-kumar-mj172005*
- GitHub: *https://github.com/ManojMJ17/acquisition_devops*

Built by learning through real-world implementation.

```

```
