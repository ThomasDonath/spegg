#!/bin/bash
for collection in 'Resource' 'ResourceVersion' 'SubjectVersion'
do
    docker-compose exec mongo bash -c "mongoexport --username=\${MONGODB_USERNAME} --password=\${MONGODB_PASSWORD} --db=\${MONGODB_DATABASE} --collection=${collection}" > data/${collection}.json
done

