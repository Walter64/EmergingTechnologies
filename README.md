## Emerging Technologies Module Repository

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
* Comparison of Quantum Computing and Classical Computing
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

## Create Docker image and run quantum-deutsch.ipyb notebook through Docker
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

## Comparison of Quantum Computing and Classical Computing.

**Quantum Computers**
<br />

Quantum computing is an emerging technology that may be far more powerful then classical computers at solving a number of complex problems in areas such as finance, cybersucurity, healthcare and more. It uses quantum mechanical phenomena of superposition and entanglement to process information.

[What Is Quantum Computing? Definition, Industry Trends, & Benefits Explained](https://www.cbinsights.com/research/report/quantum-computing/)

Quantum computers calculate using qubits which can represent 0 and 1 at the same time. Their power grows exponentially in proportion to the number of qubits linked together which gives them a distinct advantage over classical computers. They are well suited for tasks like optimization problems, data analysis, and simulations. On the negative end they have high error rates and need to be kept ultracold.

Qubits are the basic units of information in a quantum computer and are essentially the same as a transisitor used in a classical computers. Qubits use superposition which is a quantum mechanical phenomenon is the ability of a quantum system to be in multiple states at the same time until it is measured. Like flipping a coin, while in the air it can be either heads or tails but when it lands it will be heads or tails (ignoring it landing on its side).

[Quantum Computing Vs. Classical Computing In One Graphic](https://www.cbinsights.com/research/quantum-computing-classical-computing-comparison-infographic/)

Entanglement is another qunatum phenomenon where entangled particle remain connected so that an action performed on one particle affects the other regardless of the distance. So if we measure a qubit output and it is a 1 then we know the the other qubit will be a 0. So by not taking andy measurements until needed to qubits can represent both binary 0 and 1 at the same time during the actual calculation.

Einstein himself had difficulty with this as he stated nothing can go faster than the speed of light.

[ASTROGEEKZ](https://astrogeekzco.com/2018/08/09/quantum-entanglement-explained-in-simple-words/)

Quantum computing don't have memory or a processor, not do they have computing languages as such and researchers are developing algorithms that can provide solutions to problems.

[Quantum Computing: How it differs from classical computing?](https://www.bbva.com/en/quantum-computing-how-it-differs-from-classical-computing/)

**Classical Computers**
<br />

Classical or conventional computers calculate with transistors, which can represent either 0 or 1. Their power increases in a 1:1 relationship with the number of transistors. They have low error rates and can operate at room temperature. They are best suited to regualar day-to-day tasks.

[Quantum Computing Vs. Classical Computing In One Graphic](https://www.cbinsights.com/research/quantum-computing-classical-computing-comparison-infographic/)

They carry out logical operations using the definite position of a physical state, usually binary, meaning its operations are based on one of two positions. A single state - such as on or off, up or down, 1 or 0 - is called a bit.

[How Do Quantum Computers Work?](https://www.sciencealert.com/quantum-computers)

**An explanation of Deutsch’s algorithm**

Deutsch-Jozsa algorithm was the first to show a separation between the quantum and classical difficulty of a problem. This algorithm demonstrates the significance of allowing quantum amplitudes to take both positive and negative values, as opposed to classical probabilities that are always non-negative.

The Deutsch–Jozsa problem is specifically designed to be easy for a quantum algorithm and hard for any deterministic classical algorithm. The motivation is to show a black box problem that can be solved efficiently by a quantum computer with no error, whereas a deterministic classical computer would need a large number of queries to the black box to solve the problem.

For the Deutsch–Jozsa algorithm to work, the oracle computing f(x) from x has to be a quantum oracle which doesn't decohere f(x). It also mustn't leave any copy of f(x) lying around at the end of the oracle call.

<br />

## Scikit-Learn Notebook
* Contains the weekly tutorial exercises.
* Demonstrations of at least three interesting scikit-learn algorithms. (not yet done)

<br />

## Quantum-Deutsch Notebook
* Contains the weekly tutorial exercises.
* An explanation of Deutsch’s algorithm code simulating it using qiskit.