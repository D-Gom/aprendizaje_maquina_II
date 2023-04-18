# Set environment variable for the tracking URL where the Model Registry resides
export MLFLOW_TRACKING_URI=postgresql://postgres:contrasenaML2@34.176.121.118:5432/postgres
#  Set environment variable for the tracking URL where the Model Registry resides on windows
# set MLFLOW_TRACKING_URI=postgresql://postgres:contrasenaML2@34.176.121.118:5432/postgres

# Serve the production model from the model registry
mlflow models serve --no-conda -m "models:/ml2_uba/production" -p 5001 -h 0.0.0.0 

