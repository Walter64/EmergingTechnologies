## Emerging Technologies Module Repository
***
<br />

### Author: Walter Regan
<br />

## Contents
* Github Repository
* How to run Notebooks
* Using nvviewer or binder to view your Jupyter notebooks
* About nbviewer badge
* About Cmder
* Create Docker image and running qunatum-deutsch.ipyb notebook through Docker
* Scikit-Learn Notebook
* Quantum-Deutsch Notebook

<br />

## GitHub Repository
This repository contains a README file, two Jupyter notebooks scikit-learn and qunatum-deutsch that make up the bulk of the work. There are a number of files which enable the user to run the notebooks in Docker with minimal configuration. These files are docker-compose.ymal, Dockerfile, requirements.txt files.

The purpose of this assessment is demonstrate my continuing learning throughout the semester and aims to ensure that I have achieved the learning outcomes of this module by providing me with sample work to show prospective employers. Each of the notebooks contain examples that give an overview of their respective Python libraries.

<br />

## How to run Notebooks
If you want to view the notebooks in a browser use the nbviewer and binder static links below. To edit either notebook use the dynamic nbviewer or binder below. Although you can edit the notebooks using binder these changes will not be saved, you would need to download the notebook in that case.

In order to run the notebooks, first ensure you have Python 3 installed which is easily done through Anaconda which itself needs to be installed. On your machine create a working folder for the project then clone this repository to this folder. Open a terminal window such as Cmder and navigate to the working folder. To run the project in a browser execute the command "jupyter lab" in the cmdr terminal. Here you can view and edit the notebooks. 

Also from the working folder you can open the project in a Visual Studio Code IDE by executing the command "code .".

Because the quantum-deutsch uses Qiskit you will need to run and compile this notebook in a Docker container, therefore you will need to download Docker and then create a Jupyter image for this.

To run the Docker image; using cmdr terminal from your working folder execute the command "docker-compose up" and to stop the session enter "ctrl+c".

<br />

## Using nvviewer or binder to view your Jupyter notebooks

View the rendered scikit-learn notebook in static form by clicking the nbviewer badge below:

[![nbviewer](https://raw.githubusercontent.com/jupyter/design/master/logos/Badges/nbviewer_badge.svg)](https://nbviewer.org/github/Walter64/EmergingTechnologies/blob/main/scikit-learn.ipynb)

View the rendered scikit-learn notebook in dynamic form by clicking the nbviewer badge below:

[![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/Walter64/EmergingTechnologies/HEAD?labpath=scikit-learn.ipynb)

View the rendered quantum-deutshe notebook in static form by clicking the nbviewer badge below:

[![nbviewer](https://raw.githubusercontent.com/jupyter/design/master/logos/Badges/nbviewer_badge.svg)](https://nbviewer.org/github/Walter64/EmergingTechnologies/blob/main/quantum-deutsch.ipynb)

View the rendered quantum-deutshe notebook in dynamic form by clicking the binder badge below:

[![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/Walter64/EmergingTechnologies/HEAD?labpath=quantum-deutsch.ipynb)

### About nbviewer badge

This is a svg image of a badge which, when surrounded by square brackets becomes a link to its corrosponding url.<br />
**_Reference_** [nbviewer](https://github.com/jupyter/nbviewer/issues/714)

### About Cmder

Cmder is a software package created out of pure frustration over the absence of nice console emulators on Windows. It is based on amazing software, and spiced up with the Monokai color scheme and a custom prompt layout, looking sexy from the start.<br />
**_Reference_** [Cmder](https://cmder.net/)

<br />

## Create Docker image and run qunatum-deutsch.ipyb notebook through Docker
This can be done easier by using Visual Studio Code which you can open in your working folder as mentioned above. In the project create the files docker-compose, Dockerfile, requirements.txt.

The **docker-compose** file is a tool for defining and running multi-container Docker applications. It allows you to configure your application’s services. Within this file you should have the newest version for jupyter notebook and you will just need one service here "web". The image is built from current folder's Dockerfile which is defined by the build tag "build ." The port that will be exposed is port 8888 which jupyter uses by default. Docker uses Volumnes as a way of persisting data which is generated and used by Docker containers and here the Volume mounts the current folder to .:/home/jovyan/repo. The environment variables are used to bring configuration data into your applications. This is often the case if you have some configurations that are dependent on the host operating system or some other variable things that can change. Set environmental variable to yes, to make jupyter lab run. Then using the command, "docker-compose up" you create and start all the services from your configuration.

[docker docs](https://docs.docker.com/compose/compose-file/compose-file-v3/)

[Overview of Docker Compose](https://docs.docker.com/compose/)

[The definitive guide to Docker compose by Gabriel Tanner](https://gabrieltanner.org/blog/docker-compose)

The **Dockerfile** file contains all the commands or instructions to assemble an container layer by layer. It is called by the docker-compose.yml file in order to build or assemble an image. The commands used to create this image are:

* FROM - Creates a layer from jupyter/scipy-notebook as base image
* WORKDIR - sets working folder to /home/jovyan/repo
* USER - root (full control of the host system)
* COPY requirements.txt requirements.txt
* RUN - Builds your container, runs pip install for requirements.txt packages
* EXPOSE - 8888, the port to expose

[What Is a Dockerfile: Everything You Need to Know](https://www.simplilearn.com/tutorials/docker-tutorial/what-is-dockerfile)

[Dockerfile reference](https://docs.docker.com/engine/reference/builder/)

The **requirements.txt** file manages the Python dependencies needed for the project in Docker. You simply add the name of the packages such as numpy, or qiskit[visualization] for example. When the image is being built python, in this case can get these packages and add them to the project.

## Scikit-Learn Notebook
Demonstrations of at least three interesting scikit-learn algorithms.

<br />

## Quantum-Deutsch Notebook
A clear and concise comparison of Quantum Computing and Classical Computing.<br />
An explanation of Deutsch’s algorithm and code simulating it using qiskit.

<br />
