rttscraper-dockerized
=====================

Building image
--------------
::

    docker build -t rttscraper .

Pushing to registry
-------------------
::

    docker tag rttscraper us.gcr.io/rttscraper/rttscraper
    gcloud docker -- push us.gcr.io/rttscraper/rttscraper

Linking hyper with stuff
------------------------
::

    hyper login -u oauth2accesstoken -p "`gcloud --project=rttscraper auth print-access-token`" https://us.gcr.io

Pulling image into hyper
------------------------
::

    hyper pull "us.gcr.io/rttscraper/rttscraper:latest"

Running in hyper
----------------
::

    hyper run -d --name rttscraper "us.gcr.io/rttscraper/rttscraper:latest"
