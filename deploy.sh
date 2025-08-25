#!/bin/bash

echo "🚀 USDT Wallet Deployment Script"
echo "=================================="

# Check if git is installed
if ! command -v git &> /dev/null; then
    echo "❌ Git is not installed. Please install Git first."
    exit 1
fi

# Check if node is installed
if ! command -v node &> /dev/null; then
    echo "❌ Node.js is not installed. Please install Node.js first."
    exit 1
fi

echo "✅ Prerequisites check passed"

# Check if this is a git repository
if [ ! -d ".git" ]; then
    echo "❌ This is not a git repository. Please initialize git first:"
    echo "   git init"
    echo "   git add ."
    echo "   git commit -m 'Initial commit'"
    echo "   git remote add origin YOUR_GITHUB_REPO_URL"
    echo "   git push -u origin main"
    exit 1
fi

echo "📋 Deployment Checklist:"
echo "1. ✅ Repository is ready"
echo "2. ⏳ Backend configuration files created"
echo "3. ⏳ Frontend configuration files created"
echo "4. ⏳ Environment variables need to be set"
echo "5. ⏳ MongoDB database needs to be configured"

echo ""
echo "🔧 Next Steps:"
echo ""
echo "1. Push your code to GitHub:"
echo "   git add ."
echo "   git commit -m 'Add deployment configuration'"
echo "   git push"
echo ""
echo "2. Set up MongoDB Atlas:"
echo "   - Go to https://cloud.mongodb.com"
echo "   - Create a free cluster"
echo "   - Create a database user"
echo "   - Get your connection string"
echo ""
echo "3. Deploy on Render:"
echo "   - Go to https://dashboard.render.com"
echo "   - Create Web Service for backend"
echo "   - Create Static Site for frontend"
echo "   - Set environment variables"
echo ""
echo "4. Environment Variables for Backend:"
echo "   MONGO_URI=your_mongodb_connection_string"
echo "   JWT_SECRET=your_super_secret_jwt_key"
echo "   ADMIN_DEFAULT_PASSWORD=your_admin_password"
echo ""
echo "5. Environment Variables for Frontend:"
echo "   VITE_API_URL=https://usdt-wallet-backend.onrender.com"
echo ""
echo "📖 For detailed instructions, see README.md"
echo ""
echo "🎯 Your services will be available at:"
echo "   Backend: https://usdt-wallet-backend.onrender.com"
echo "   Frontend: https://usdt-wallet-frontend.onrender.com"
echo ""
echo "🔐 Admin Access:"
echo "   Phone: 9999999999"
echo "   Password: (set via ADMIN_DEFAULT_PASSWORD env var)"
