# USDT Wallet - Complete Setup Guide

This is a full-stack USDT wallet application with React frontend and Node.js backend, featuring user management, transaction handling, and admin panel.

## 🚀 Quick Start

### Prerequisites
- Node.js (v16 or higher)
- MongoDB (local or cloud)
- Git

### 1. Backend Setup

```bash
# Navigate to backend directory
cd backend

# Install dependencies
npm install

# Create environment file
cp env.example .env

# Edit .env file with your MongoDB connection string
# Update MONGO_URI with your actual MongoDB connection string
# Example: mongodb+srv://username:password@cluster.mongodb.net

# Start the backend server
npm run dev
# or
npm start
```

The backend will run on `http://localhost:4000`

### 2. Frontend Setup

```bash
# Navigate to frontend directory
cd frontend

# Install dependencies
npm install

# Start the development server
npm run dev
```

The frontend will run on `http://localhost:5173`

## 🔧 Configuration

### Backend Environment Variables (.env)

```env
# Database Configuration
MONGO_URI=mongodb+srv://username:password@cluster.mongodb.net
MONGO_DB=x_wallet

# JWT Configuration
JWT_SECRET=your-super-secret-jwt-key-here-change-this-in-production

# Admin Configuration
ADMIN_DEFAULT_PHONE=9999999999
ADMIN_DEFAULT_PASSWORD=admin7619
ADMIN_DEFAULT_NAME=Admin

# Frontend URL
FRONTEND_URL=http://localhost:5173

# Upload Directory
UPLOAD_DIR=uploads

# Server Configuration
PORT=4000
NODE_ENV=development
```

### Frontend Environment Variables

Create `frontend/.env`:
```env
VITE_API_URL=http://localhost:4000
```

## 📱 Features

### User Features
- **Registration & Login**: Phone-based authentication
- **Dashboard**: Balance overview and transaction history
- **Deposit**: USDT deposits via ERC20/TRC20 with screenshot upload
- **Withdraw**: Multiple withdrawal methods (Crypto, UPI, Bank)
- **Transactions**: Complete transaction history with filtering
- **Profile**: User profile management with payment details
- **Referral System**: Earn commissions from referrals
- **Help & Support**: Contact support channels

### Admin Features
- **Admin Dashboard**: System overview and statistics
- **User Management**: View, edit, and manage users
- **Transaction Management**: Approve/reject transactions
- **Settings Management**: Configure system settings
- **Analytics**: Comprehensive reporting and analytics

## 🗄️ Database Schema

### Users Collection
- User authentication and profile data
- Balance and referral information
- Payment method details (UPI, Bank)

### Transactions Collection
- Deposit and withdrawal records
- Status tracking and admin notes
- Fee calculations and processing details

### Settings Collection
- System configuration
- USDT pricing and limits
- Referral system settings
- Support contact information

## 🔐 Default Admin Access

- **Phone**: 9999999999
- **Password**: admin7619

## 🛠️ API Endpoints

### Authentication
- `POST /auth/register` - User registration
- `POST /auth/login` - User login
- `POST /auth/logout` - User logout
- `GET /auth/me` - Get current user

### Wallet Operations
- `GET /wallet/balance` - Get user balance
- `GET /wallet/txns` - Get user transactions
- `POST /wallet/deposit` - Create deposit request
- `POST /wallet/withdraw` - Create withdrawal request

### Admin Operations
- `GET /users` - List all users (admin)
- `GET /wallet/txns/admin` - List all transactions (admin)
- `POST /wallet/approve/:txnId` - Approve transaction (admin)
- `POST /wallet/reject/:txnId` - Reject transaction (admin)

### Settings
- `GET /settings` - Get system settings
- `PUT /settings/price` - Update USDT price (admin)
- `PUT /settings/limits` - Update transaction limits (admin)

## 🚀 Deployment

### Backend Deployment (Render/Heroku)

1. Create a new web service
2. Connect your GitHub repository
3. Set environment variables
4. Deploy

### Frontend Deployment (Vercel/Netlify)

1. Connect your GitHub repository
2. Set build command: `npm run build`
3. Set output directory: `dist`
4. Set environment variable: `VITE_API_URL=your-backend-url`
5. Deploy

## 🔧 Development

### Backend Development
```bash
cd backend
npm run dev  # Starts with nodemon for auto-restart
```

### Frontend Development
```bash
cd frontend
npm run dev  # Starts Vite dev server
```

### Building for Production
```bash
# Backend
cd backend
npm start

# Frontend
cd frontend
npm run build
```

## 📁 Project Structure

```
usdt-site-separate-panels/
├── backend/
│   ├── src/
│   │   ├── middleware/     # Auth and rate limiting
│   │   ├── models/         # Database models
│   │   ├── routes/         # API routes
│   │   └── utils/          # Utility functions
│   ├── uploads/            # File uploads
│   └── server.js           # Main server file
├── frontend/
│   ├── src/
│   │   ├── components/     # Reusable components
│   │   ├── pages/          # Page components
│   │   ├── shell/          # Layout components
│   │   └── lib/            # Utility functions
│   └── dist/               # Built files
└── README.md
```

## 🐛 Troubleshooting

### Common Issues

1. **MongoDB Connection Error**
   - Check your MongoDB connection string
   - Ensure MongoDB is running
   - Verify network access

2. **CORS Errors**
   - Check FRONTEND_URL in backend .env
   - Ensure frontend is running on correct port

3. **Authentication Issues**
   - Check JWT_SECRET is set
   - Verify cookie settings

4. **File Upload Issues**
   - Ensure uploads directory exists
   - Check file size limits

## 📞 Support

For support and questions:
- Check the Help page in the application
- Review the API documentation
- Check server logs for errors

## 🔒 Security Notes

- Change default admin credentials
- Use strong JWT secrets
- Enable HTTPS in production
- Regularly update dependencies
- Monitor for security vulnerabilities

## 📄 License

This project is for educational purposes. Please ensure compliance with local regulations when handling cryptocurrency transactions.











