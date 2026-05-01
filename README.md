---
title: Telegram Master Hub
emoji: 🏰
colorFrom: indigo
colorTo: blue
sdk: docker
pinned: false
app_file: super_dashboard.py
---

# 🏰 Telegram Master Hub & Dashboard

A centralized, automated Hub-and-Spoke dashboard for managing multiple Telegram bots from a single interface.

## 🚀 Features

- **Automated Sync**: Automatically fetches all your owned bots from @BotFather using MTProto.
- **Real-time Monitoring**: Monitor bot status (Online/Offline) and last seen times.
- **Usage Tracking**: Track AI token usage and storage metrics across all distributed "spoke" bots.
- **Live Logs**: Stream live terminal logs from your remote bots directly to the Master Hub.
- **Multi-Platform**: Manage bots running on different servers (Local, HF, Render, etc.) from one place.

## 🛠️ Configuration

The following environment variables (Secrets) are required:

| Variable | Description |
|----------|-------------|
| `DASHBOARD_BOT_TOKEN` | The token for your Master Hub Bot |
| `API_ID` | Your Telegram API ID (from my.telegram.org) |
| `API_HASH` | Your Telegram API Hash |
| `ADMIN_IDS` | Comma-separated Telegram IDs allowed to access the Hub |
| `HUB_SECRET` | A secret token to secure the Hub-Agent communication |

## 📦 Deployment

This project is optimized for **Hugging Face Spaces** using Docker.

1. Create a new Space with the **Docker** SDK.
2. Upload `super_dashboard.py`, `Dockerfile`, `requirements.txt`, and `hub_session.session`.
3. Add your **Secrets** in the Space settings.
4. The Hub will automatically start on port 7860.

---
*Built with Python, FastAPI, and Telethon.*
