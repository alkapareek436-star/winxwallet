# Custom Domain Setup Guide

## 🎯 Setting up Custom Domains with Render

### Prerequisites
- A domain name (e.g., `yourdomain.com`)
- Access to your domain's DNS settings
- Render services deployed

### Step 1: Add Custom Domain in Render

#### For Frontend (Static Site)
1. Go to your Render dashboard
2. Select your frontend service (`usdt-wallet-frontend`)
3. Go to "Settings" → "Custom Domains"
4. Click "Add Domain"
5. Enter your subdomain (e.g., `wallet.yourdomain.com`)
6. Click "Add"

#### For Backend (Web Service)
1. Go to your Render dashboard
2. Select your backend service (`usdt-wallet-backend`)
3. Go to "Settings" → "Custom Domains"
4. Click "Add Domain"
5. Enter your subdomain (e.g., `api.yourdomain.com`)
6. Click "Add"

### Step 2: Configure DNS Records

Add these CNAME records in your domain's DNS settings:

```
Type: CNAME
Name: wallet
Value: usdt-wallet-frontend.onrender.com
TTL: 3600

Type: CNAME
Name: api
Value: usdt-wallet-backend.onrender.com
TTL: 3600
```

### Step 3: Update Environment Variables

#### Frontend Environment Variable
Update the `VITE_API_URL` in your frontend service:
```
VITE_API_URL=https://api.yourdomain.com
```

#### Backend Environment Variable
Update the `FRONTEND_URL` in your backend service:
```
FRONTEND_URL=https://wallet.yourdomain.com
```

### Step 4: SSL Certificate

Render automatically provisions SSL certificates for custom domains. The process takes 5-10 minutes.

### Step 5: Verify Setup

1. **Frontend:** Visit `https://wallet.yourdomain.com`
2. **Backend:** Visit `https://api.yourdomain.com`
3. **Health Check:** `https://api.yourdomain.com/` should return `{"ok": true, "service": "x-wallet-backend"}`

### Alternative: Root Domain Setup

If you want to use the root domain instead of subdomains:

#### Frontend on Root Domain
```
Type: CNAME
Name: @
Value: usdt-wallet-frontend.onrender.com
TTL: 3600
```

#### Backend on Subdomain
```
Type: CNAME
Name: api
Value: usdt-wallet-backend.onrender.com
TTL: 3600
```

### Troubleshooting

#### DNS Propagation
- DNS changes can take up to 48 hours to propagate globally
- Use tools like [whatsmydns.net](https://whatsmydns.net) to check propagation

#### SSL Certificate Issues
- Wait 10-15 minutes for SSL certificate provisioning
- Check Render logs for any certificate errors
- Ensure DNS is properly configured before adding the domain

#### CORS Issues
- Make sure `FRONTEND_URL` in backend matches your frontend domain exactly
- Include the protocol (`https://`) in the URL

### Example Configuration

For a domain `mywallet.com`:

**DNS Records:**
```
wallet.mywallet.com → usdt-wallet-frontend.onrender.com
api.mywallet.com → usdt-wallet-backend.onrender.com
```

**Environment Variables:**
```
Frontend: VITE_API_URL=https://api.mywallet.com
Backend: FRONTEND_URL=https://wallet.mywallet.com
```

**Final URLs:**
- Frontend: `https://wallet.mywallet.com`
- Backend: `https://api.mywallet.com`
- Admin Panel: `https://wallet.mywallet.com/admin`
