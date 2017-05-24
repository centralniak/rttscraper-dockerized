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
