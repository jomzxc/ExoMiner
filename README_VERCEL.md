# Deploying ExoMiner Vetting Catalog to Vercel

This guide explains how to deploy the ExoMiner vetting catalog web application to Vercel.

## Overview

The ExoMiner vetting catalog is a Dash-based web application that displays TESS SPOC TCE (Threshold Crossing Event) data with ExoMiner scores. This deployment configuration allows the app to run on Vercel's serverless platform.

## Prerequisites

1. A [Vercel account](https://vercel.com/signup)
2. [Vercel CLI](https://vercel.com/docs/cli) installed (optional, for local testing)
3. This repository cloned or forked to your GitHub account

## Files Added for Vercel Deployment

- `vercel.json` - Vercel configuration file that defines the build and routing
- `api/index.py` - Serverless function entry point that wraps the Dash app
- `requirements.txt` - Python dependencies for the application

## Deployment Steps

### Option 1: Deploy via Vercel Dashboard (Recommended)

1. Log in to your [Vercel Dashboard](https://vercel.com/dashboard)
2. Click "Add New Project"
3. Import your GitHub repository (jomzxc/ExoMiner)
4. Vercel will automatically detect the configuration from `vercel.json`
5. Click "Deploy"

### Option 2: Deploy via Vercel CLI

1. Install Vercel CLI:
   ```bash
   npm install -g vercel
   ```

2. Navigate to the project directory:
   ```bash
   cd /path/to/ExoMiner
   ```

3. Login to Vercel:
   ```bash
   vercel login
   ```

4. Deploy:
   ```bash
   vercel
   ```

5. Follow the prompts to complete the deployment

### Option 3: Deploy via GitHub Integration

1. Connect your GitHub repository to Vercel
2. Push changes to your repository
3. Vercel will automatically deploy on each push to the main branch

## Configuration Details

### vercel.json

The `vercel.json` file tells Vercel:
- To use Python for the `api/index.py` file
- To route all requests to the serverless function

### api/index.py

This file:
- Imports the existing Dash application
- Exposes the Flask server for Vercel's serverless environment
- Handles path resolution for the application files

## Environment Variables

No environment variables are required for basic deployment. However, you can add them in the Vercel dashboard under:
- Project Settings → Environment Variables

## Local Testing

To test the application locally before deploying:

1. Install dependencies:
   ```bash
   pip install -r requirements.txt
   ```

2. Run the Dash app directly:
   ```bash
   cd exominer_vetting_pc_catalog_dash-render-web-app
   python vetting_tce_catalog_exominer_dash_app.py
   ```

3. Open your browser to `http://localhost:8050`

## Troubleshooting

### Issue: Application not loading

**Solution**: Check the Vercel deployment logs for errors. Common issues:
- Missing dependencies in `requirements.txt`
- Path resolution problems
- Large file sizes (Vercel has deployment size limits)

### Issue: CSV data not loading

**Solution**: Ensure the `exominer_vetting_pc_catalog_dash-render-web-app/data/` directory and CSV file are included in the deployment.

### Issue: Images not displaying

**Solution**: Verify that:
- The `assets/` folder is present
- The `others/images/` folder with the ExoMiner logo is included
- File paths in the code are correct

## Application Features

The deployed application includes:
- Interactive table with sorting and filtering
- Regex-based sector run filtering
- CSV export functionality
- Links to SPOC DV mini-reports
- Responsive design

## Data Source

The application displays ExoMiner vetting results for TESS SPOC 2-min TCEs from Sectors 1-67. The data is stored in:
```
exominer_vetting_pc_catalog_dash-render-web-app/data/exominer_vetting_tess-spoc-2-min-s1s67_dashtable_dvm-url_scoregt0.1.csv
```

## Citation

If you use this catalog for research, please cite:
- [ExoMiner's TESS 2-min paper (2025)](https://doi.org/10.48550/arXiv.2502.09790)

## Support

For issues related to:
- **ExoMiner application**: See the main [README.md](README.md)
- **Vercel deployment**: Consult [Vercel's documentation](https://vercel.com/docs)
- **Bug reports**: Open an issue on the GitHub repository

## Performance Considerations

- Vercel serverless functions have a default timeout of 10 seconds (can be increased in Pro plans)
- The CSV file (~2.8 MB) is loaded on each request, which may impact performance
- Consider implementing caching strategies for production use

## Additional Resources

- [Vercel Python Documentation](https://vercel.com/docs/concepts/functions/serverless-functions/runtimes/python)
- [Dash Deployment Guide](https://dash.plotly.com/deployment)
- [ExoMiner Project](https://github.com/nasa/ExoMiner)
