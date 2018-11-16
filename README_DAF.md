# OntoPiA-UI DAF Setup

This file explains the steps needed to setup `OntoPiA-UI` inside the DAF infrastructure.
Check the `README.md` file for info specific to the `OntoPiA-UI` project.

# Prerequisites

## Virtuoso

This project relies on vocabularies and ontologies already present in the corresponding folders.
They can be downloaded with the `downloadData.sh` script.

## Lodview

This project uses the Lodview project which can be found here: https://github.com/dvcama/LodView.git

The code has been downloaded to fix the version contained in the Docker pod.

To create the `war` artifact execute the following steps:

1) `cd LodView`
2) `mvn compile war:war`

The `webvowl` artifact can be downloaded here: http://downloads.visualdataweb.de/webvowl_1.0.6.war

## Lode

This project uses the Lodview project which can be found here: https://github.com/essepuntato/LODE

The code has been downloaded to fix the version contained in the Docker pod.

# Setup

1) Build and deploy the Docker images using the script `build.sh`
2) `kubectl create -f ontoPIA.yaml`
