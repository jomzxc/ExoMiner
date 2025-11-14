"""
Vercel serverless function wrapper for the ExoMiner Dash application.
This file allows the Dash app to be deployed on Vercel.
"""

import sys
import os

# Add the project root to the Python path
project_root = os.path.abspath(os.path.join(os.path.dirname(__file__), '..'))
sys.path.insert(0, project_root)

# Change to the project root directory to ensure relative paths work
os.chdir(project_root)

# Import the Dash app module
import importlib.util
spec = importlib.util.spec_from_file_location(
    "dash_app", 
    os.path.join(project_root, "exominer_vetting_pc_catalog_dash-render-web-app", "vetting_tce_catalog_exominer_dash_app.py")
)
dash_app = importlib.util.module_from_spec(spec)
spec.loader.exec_module(dash_app)

# Get the app and server
app = dash_app.app
server = dash_app.server
