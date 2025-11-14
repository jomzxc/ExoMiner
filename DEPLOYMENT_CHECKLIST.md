# Vercel Deployment Checklist

Use this checklist when deploying the ExoMiner vetting catalog to Vercel.

## Pre-Deployment

- [ ] Ensure you have a Vercel account ([Sign up here](https://vercel.com/signup))
- [ ] Fork or clone this repository to your GitHub account
- [ ] Review the [README_VERCEL.md](README_VERCEL.md) documentation

## Deployment Steps

### Option 1: Vercel Dashboard (Recommended for first-time deployment)

- [ ] Log in to [Vercel Dashboard](https://vercel.com/dashboard)
- [ ] Click "Add New Project"
- [ ] Select "Import Git Repository"
- [ ] Choose your GitHub repository
- [ ] Vercel should auto-detect the configuration from `vercel.json`
- [ ] Click "Deploy"
- [ ] Wait for the build to complete (typically 2-5 minutes)
- [ ] Click the deployment URL to view your live application

### Option 2: Vercel CLI (For developers)

- [ ] Install Vercel CLI: `npm install -g vercel`
- [ ] Navigate to project directory: `cd /path/to/ExoMiner`
- [ ] Login to Vercel: `vercel login`
- [ ] Deploy: `vercel`
- [ ] Follow the prompts
- [ ] Note the deployment URL provided

### Option 3: GitHub Integration (For continuous deployment)

- [ ] Connect your GitHub repository to Vercel
- [ ] Configure automatic deployments
- [ ] Push changes to trigger automatic deployment

## Post-Deployment Verification

- [ ] Visit the deployment URL
- [ ] Verify the ExoMiner logo appears
- [ ] Check that the data table loads (377 pages of data)
- [ ] Test sorting by clicking column headers
- [ ] Test filtering using the sector run input box
- [ ] Try exporting CSV data
- [ ] Click a "Download" link to verify DV mini-report links work
- [ ] Check that the page loads within reasonable time (< 10 seconds)

## Configuration Verification

- [ ] Python version is 3.12 (check deployment logs)
- [ ] All dependencies installed successfully (check build logs)
- [ ] No errors in the function logs
- [ ] Assets (images, CSS) are loading correctly

## Performance Check

- [ ] Initial page load time: _______ seconds
- [ ] Data filtering response: _______ seconds
- [ ] CSV export works: Yes / No
- [ ] Mobile responsiveness: Yes / No

## Troubleshooting

If deployment fails, check:

- [ ] Build logs for Python errors
- [ ] Function logs for runtime errors
- [ ] Deployment size (should be < 50MB)
- [ ] All required files are included in deployment

Common issues and solutions are documented in [README_VERCEL.md](README_VERCEL.md#troubleshooting).

## Optional: Custom Domain

- [ ] Configure custom domain in Vercel project settings
- [ ] Add DNS records as instructed by Vercel
- [ ] Verify SSL certificate is active
- [ ] Test custom domain URL

## Monitoring

- [ ] Set up Vercel Analytics (optional)
- [ ] Configure error alerting (optional)
- [ ] Monitor function execution times
- [ ] Check deployment logs regularly

## Maintenance

- [ ] Document deployment URL: _______________________
- [ ] Schedule regular data updates (if applicable)
- [ ] Plan for redeployment when catalog data is updated
- [ ] Monitor Vercel usage and quotas

## Success Criteria

✅ Application is accessible via URL  
✅ All features work as expected  
✅ No errors in console or logs  
✅ Performance is acceptable  
✅ Data displays correctly  

## Notes

Deployment Date: _______________________  
Deployed By: _______________________  
Vercel Project Name: _______________________  
Deployment URL: _______________________  
Custom Domain (if any): _______________________  

---

**Need Help?**

- See [README_VERCEL.md](README_VERCEL.md) for detailed instructions
- Check [Vercel Documentation](https://vercel.com/docs)
- Review deployment logs for specific errors
- Open an issue on the GitHub repository
