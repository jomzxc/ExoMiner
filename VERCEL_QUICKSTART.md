# Vercel Quick Start Guide

## 🚀 Deploy in 3 Steps

### 1. Install Vercel CLI (one-time setup)

```bash
npm install -g vercel
```

### 2. Login to Vercel

```bash
vercel login
```

### 3. Deploy

```bash
cd /path/to/ExoMiner
vercel
```

That's it! Your app will be deployed and you'll get a URL.

---

## 📋 Common Commands

### Deploy to Production

```bash
vercel --prod
```

### Preview Deployment (staging)

```bash
vercel
```

### Check Deployment Status

```bash
vercel ls
```

### View Deployment Logs

```bash
vercel logs <deployment-url>
```

### Remove a Deployment

```bash
vercel rm <deployment-name>
```

### View Project Info

```bash
vercel inspect <deployment-url>
```

### Pull Environment Variables

```bash
vercel env pull
```

---

## 🖥️ Local Development

### Run the app locally

```bash
./run_local.sh
```

Or manually:

```bash
pip install -r requirements.txt
python exominer_vetting_pc_catalog_dash-render-web-app/vetting_tce_catalog_exominer_dash_app.py
```

Then visit: http://localhost:8050

---

## 🌐 Vercel Dashboard

Access your deployments at: https://vercel.com/dashboard

- View all deployments
- Configure domains
- Set environment variables
- Monitor analytics
- View logs

---

## 🔧 Project Configuration

All configuration is in `vercel.json`:

```json
{
  "version": 2,
  "builds": [
    {
      "src": "api/index.py",
      "use": "@vercel/python"
    }
  ]
}
```

---

## 📊 Deployment URLs

Vercel provides three types of URLs:

1. **Production URL**: `your-project.vercel.app`
2. **Preview URL**: `your-project-git-branch.vercel.app`
3. **Custom Domain**: `your-domain.com` (optional)

---

## 🐛 Quick Troubleshooting

### Build Failed?

```bash
# Check the build logs
vercel logs --follow

# Try a clean deployment
rm -rf .vercel
vercel
```

### Function Timeout?

Upgrade to Pro plan for longer timeouts or optimize your code.

### Large Deployment?

Check `.vercelignore` and ensure only necessary files are included.

---

## 📚 Additional Resources

- **Full Documentation**: [README_VERCEL.md](README_VERCEL.md)
- **Deployment Checklist**: [DEPLOYMENT_CHECKLIST.md](DEPLOYMENT_CHECKLIST.md)
- **Vercel Docs**: https://vercel.com/docs
- **Vercel Python Docs**: https://vercel.com/docs/functions/serverless-functions/runtimes/python

---

## 💡 Pro Tips

1. **Use Git branches** - Each branch gets its own preview URL
2. **Environment variables** - Set them in Vercel Dashboard for secrets
3. **Custom domains** - Free SSL certificates included
4. **Instant rollbacks** - Revert to previous deployments with one click
5. **Automatic HTTPS** - All deployments use HTTPS by default

---

## 🎯 Next Steps

1. Deploy your app: `vercel`
2. Test the deployment URL
3. Configure a custom domain (optional)
4. Set up GitHub integration for automatic deployments
5. Share your ExoMiner catalog with the world! 🌍✨

---

**Questions?** Check the [troubleshooting section](README_VERCEL.md#troubleshooting) in README_VERCEL.md
