#Base image is just a debian base anaconda file
FROM continuumio/anaconda3:latest

#No need to WORK /BE cause we area already in that directory
#Changing directories
WORKDIR NIDS_BE/


#Copy from all code in application's host to container file
COPY . .

# Activate the existing Conda environment
RUN conda env update --name flaskapp --file environment.yml --prune

#Installing wsgi server
Run conda install -y waitress

#Serve the application using waitress
CMD python.exe app_prod.py
