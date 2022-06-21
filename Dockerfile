## Base Python Image for App
FROM python


# Setting up Docker environment 
# Setting Work directory for RUN CMD commands
WORKDIR /Users/rohitranjan/Documents/docekr_compose/docker_compose
# Export env variables.
ENV FLASK_APP app.py
ENV FLASK_RUN_HOST 0.0.0.0
###


#Copy requirements file from current directory to file in 
#containers code directory we have just created.
COPY requirements.txt requirements.txt

#Run and install all required modules in container
RUN pip3 install -r requirements.txt

#Copy current directory files to containers code directory
COPY . .

#RUN app.
CMD ["flask", "run"]