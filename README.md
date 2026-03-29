# 🤖 WhatsApp Help Bot - N8N Automation

**Contact Number:** +923396267447

A complete WhatsApp Help Bot built with N8N, Meta WhatsApp Business API, and Docker.

---

## ✅ Features

- 🌟 Auto-greet customers in Urdu/English
- 💰 Send pricing information automatically
- 🛒 Guide customers to place orders
- 📦 Order tracking responses
- 🆘 Support ticket handling
- 👤 **Human Agent Alert** — Notifies +923396267447 when a customer needs a real person

---

## 🚀 Setup Guide (Step by Step)

### Step 1: Free Server Options

Choose one of these **free** options to host your N8N:

| Option | Free Plan | Notes |
|--------|-----------|-------|
| **Railway.app** | ✅ $5/month free credits | Best option, easy Docker deploy |
| **Render.com** | ✅ Free tier | Spins down after inactivity |
| **Oracle Cloud** | ✅ Always Free VM | Best for 24/7, needs setup |
| **Your VPS** | — | Use any hosting provider |

> **Recommended:** Railway.app for easiest setup

---

### Step 2: Deploy on Railway (Easiest Free Method)

1. Go to [railway.app](https://railway.app) and sign up with GitHub
2. Click **"New Project"** → **"Deploy from GitHub repo"**
3. Select this repository
4. Railway will auto-detect `docker-compose.yml`
5. Add environment variables (from `.env.example`)
6. Click **Deploy**!

Your N8N URL will be: `https://your-app.railway.app`

---

### Step 3: Deploy with Docker on Any VPS

```bash
# 1. Clone this repository
git clone https://github.com/YOUR_USERNAME/whatsapp-n8n-bot.git
cd whatsapp-n8n-bot

# 2. Copy and edit the .env file
cp .env.example .env
nano .env   # Edit with your values

# 3. Start N8N
docker compose up -d

# 4. Check if running
docker compose ps

# 5. View logs
docker compose logs -f n8n
```

N8N will be available at: `http://YOUR_SERVER_IP:5678`

---

### Step 4: Setup WhatsApp Business API (Meta - FREE)

1. Go to [developers.facebook.com](https://developers.facebook.com)
2. Create a new App → Select **"Business"**
3. Add **"WhatsApp"** product
4. Go to **WhatsApp → Getting Started**
5. Note your:
   - `Phone Number ID`
   - `Access Token` (click "Generate Token" for permanent one)
6. Add your number +923396267447 as a test number

---

### Step 5: Configure N8N

1. Open N8N: `http://YOUR_SERVER:5678`
2. Create admin account
3. Go to **Credentials** → **Add New**
4. Search for **"WhatsApp"** and add:
   - Access Token (from Meta)
   - Phone Number ID

---

### Step 6: Import the Workflow

1. In N8N, click **"+"** → **"Import from File"**
2. Upload: `n8n-workflows/whatsapp-help-bot.json`
3. Open the workflow
4. Update the **WhatsApp credentials** in the send nodes
5. Click **"Active"** toggle to enable

---

### Step 7: Set Webhook in Meta

1. Go to Meta Developer Console
2. WhatsApp → Configuration → Webhook
3. Set Webhook URL:
   ```
   https://YOUR_N8N_URL/webhook/whatsapp-webhook
   ```
4. Verify Token: (same as in your `.env` file)
5. Subscribe to: `messages`

---

## 📱 Bot Menu (What Customers See)

When a customer sends "Hi" or "Hello", they get:

```
🌟 Assalam-o-Alaikum [Name]!

Welcome to our Help Bot! How can I assist you today?

1️⃣ Pricing / Rates
2️⃣ Place an Order
3️⃣ Track your Order
4️⃣ Support / Help
5️⃣ Talk to a Human Agent

Reply with a number (1-5) or type your question.
```

---

## 🔔 Human Agent Alert

When customer selects option 5 or says "agent/human", the bot:
1. Sends a message to the customer that an agent is joining
2. **Automatically sends a WhatsApp alert to +923396267447** 📲

---

## 🔧 Customization

Edit the reply messages in the N8N workflow nodes:
- **Pricing Reply** node → Update prices
- **Order Reply** node → Update order process
- **Tracking Reply** node → Update tracking info
- **Support Reply** node → Update support hours

---

## 🔑 Required GitHub Secrets (for Auto-Deploy)

Add these in GitHub → Settings → Secrets → Actions:

| Secret | Description |
|--------|-------------|
| `SERVER_HOST` | Your server IP or hostname |
| `SERVER_USER` | SSH username (usually `root` or `ubuntu`) |
| `SERVER_SSH_KEY` | Your private SSH key |
| `N8N_HOST` | Your domain/IP |
| `N8N_PASSWORD` | N8N admin password |
| `N8N_ENCRYPTION_KEY` | Random 32-char string |
| `DB_PASSWORD` | Database password |
| `WHATSAPP_PHONE_NUMBER_ID` | From Meta Developer Console |
| `WHATSAPP_ACCESS_TOKEN` | From Meta Developer Console |
| `WHATSAPP_VERIFY_TOKEN` | Your custom verify token |

---

## 📞 Support

**WhatsApp:** +923396267447

---

## 🆓 Completely Free Stack

- ✅ N8N (self-hosted, open-source)
- ✅ WhatsApp Business API (Meta - free up to 1000 conversations/month)
- ✅ PostgreSQL (included in Docker Compose)
- ✅ Railway.app free tier OR Oracle Cloud Always Free
