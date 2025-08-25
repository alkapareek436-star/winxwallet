# 🚀 Quick Deployment Guide

## ✅ Your files are ready! Here's how to deploy:

### Step 1: Push to GitHub
```bash
git add .
git commit -m "Ready for deployment"
git push origin main
```

### Step 2: Deploy Frontend on Render

1. **Go to:** https://dashboard.render.com
2. **Click:** "New +" → "Static Site"
3. **Connect:** Your GitHub repository
4. **Configure:**
   - **Name:** `winxwallet-frontend`
   - **Root Directory:** `frontend`
   - **Build Command:** `npm install && npm run build`
   - **Publish Directory:** `dist`
   - **Environment Variable:**
     - Key: `VITE_API_URL`
     - Value: `https://winxwallet.onrender.com`

### Step 3: Add Custom Domain

1. **In your frontend service:**
   - Go to "Settings" → "Custom Domains"
   - Click "Add Domain"
   - Enter: `wallet.winxwallet.wuaze.com`

### Step 4: Configure DNS

**Add this CNAME record in your domain DNS:**
```
Type: CNAME
Name: wallet
Value: winxwallet-frontend.onrender.com
TTL: 3600
```

## 🎯 Final URLs:
- **Frontend:** https://wallet.winxwallet.wuaze.com
- **Backend:** https://winxwallet.onrender.com (already working!)
- **Admin Panel:** https://wallet.winxwallet.wuaze.com/admin

## 🔐 Admin Access:
- **Phone:** 9999999999
- **Password:** Set in your backend environment variables

## ⚠️ Important Notes:
- Your backend is already deployed and working
- Only need to deploy the frontend
- DNS changes may take up to 48 hours to propagate
- SSL certificate will be automatically provisioned

## 🆘 Need Help?
- Check Render logs if deployment fails
- Verify DNS settings with your domain provider
- Make sure all environment variables are set correctly
