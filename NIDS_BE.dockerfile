#Base image is just a debian base anaconda file
FROM continuumio/miniconda3

#No need to WORK /BE cause we area already in that directory
#Changing directories
WORKDIR /NIDS_BE/


#Copy from all code in application's host to container file
COPY . .

# Install packages into the conda env
# RUN conda env update --name flask_NIDS_BE --file flask_NIDS_BE.yml --prune

RUN conda env create -n flask_NIDS_BE -f flask_NIDS_BE.yml 

SHELL ["conda", "run", "-n", "flask_NIDS_BE", "/bin/bash", "-c"]

EXPOSE 7777

#Activate conda environment and Serve the application using waitress 
# CMD ["bash", "-c", "conda", "activate", "flask_NIDS_BE" ,"&&" ,"python app_prod.py"]
ENTRYPOINT ["conda", "run", "--no-capture-output", "-n", "flask_NIDS_BE", "python",  "app_prod.py"]

