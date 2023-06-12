gcloud auth list
gcloud config list project
gsutil -m cp -R gs://spls/gsp290/dataflow-python-examples .
export PROJECT=qwiklabs-gcp-02-6045d95f90ae
gcloud config set project $PROJECT
gsutil mb -c regional -l us-east4  gs://$PROJECT
gsutil cp gs://spls/gsp290/data_files/usa_names.csv
gsutil cp gs://spls/gsp290/data_files/usa_names.csv gs://$PROJECT/data_files/
gsutil cp gs://spls/gsp290/data_files/head_usa_names.csv gs://$PROJECT/data_files/
bq mk lake
docker run -it -e PROJECT=$PROJECT -v $(pwd)/dataflow-python-examples:/dataflow python:3.7 /bin/bash
gcloud auth login
gcloud source repos clone default .
gcloud config set project qwiklabs-gcp-02-6045d95f90ae
gcloud source repos clone default .
