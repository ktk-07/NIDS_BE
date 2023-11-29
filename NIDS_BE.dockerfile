#Base image is just a debian base anaconda file
FROM continuumio/anaconda3:latest

#DK if we need to cd anot

CMD flask --app app run
flask --debug --host=0.0.0.0 --app app run

