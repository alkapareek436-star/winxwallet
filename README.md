# USDT Wallet - Full Stack Application

A complete USDT wallet application with React frontend and Node.js backend, featuring user management, transaction handling, and admin panel.

## 🚀 Quick Start

### Option 1: Using the startup scripts
```bash
# Windows
start.bat

# Linux/Mac
chmod +x start.sh
./start.sh
```

### Option 2: Using npm scripts
```bash
# Install all dependencies
npm run install:all

# Start both servers in development mode
npm run dev
```

### Option 3: Manual setup
```bash
# Backend
cd backend
npm install
npm run dev

# Frontend (in another terminal)
cd frontend
npm install
npm run dev
```

## 📱 Features

- **User Authentication**: Phone-based login/registration
- **Wallet Management**: USDT balance tracking
- **Deposits**: ERC20/TRC20 USDT deposits with screenshot upload
- **Withdrawals**: Multiple methods (Crypto, UPI, Bank)
- **Transaction History**: Complete transaction tracking
- **Referral System**: Earn commissions from referrals
- **Admin Panel**: Complete admin management system
- **Real-time Updates**: Live balance and transaction updates

## 🔧 Configuration

1. **Backend**: Copy `backend/env.example` to `backend/.env` and configure MongoDB connection
2. **Frontend**: Create `frontend/.env` with `VITE_API_URL=http://localhost:4000`

## 🔐 Default Admin Access

- **Phone**: 9999999999
- **Password**: admin7619

## 📁 Project Structure

```
├── backend/           # Node.js API server
│   ├── src/
│   │   ├── middleware/    # Authentication & rate limiting
│   │   ├── models/        # Database models
│   │   ├── routes/        # API endpoints
│   │   └── utils/         # Utility functions
│   └── server.js
├── frontend/          # React frontend
│   ├── src/
│   │   ├── components/    # Reusable components
│   │   ├── pages/         # Page components
│   │   ├── shell/         # Layout components
│   │   └── lib/           # Utilities
│   └── dist/              # Built files
└── SETUP_GUIDE.md     # Detailed setup instructions
```

## 🌐 URLs

- **Frontend**: http://localhost:5173
- **Backend API**: http://localhost:4000
- **Admin Panel**: http://localhost:5173/admin

## 📚 Documentation

- [Setup Guide](SETUP_GUIDE.md) - Detailed setup instructions
- [Backend README](backend/README.md) - Backend-specific documentation
- [Frontend README](frontend/README.md) - Frontend-specific documentation

## 🛠️ Development

```bash
# Install all dependencies
npm run install:all

# Start development servers
npm run dev

# Build for production
npm run build

# Start production servers
npm run start:all
```

## 🔒 Security

- JWT-based authentication
- Rate limiting on API endpoints
- Input validation and sanitization
- Secure file upload handling
- CORS protection

## 📄 License

This project is for educational purposes. Ensure compliance with local regulations when handling cryptocurrency transactions.
