#!/bin/bash

docker run --rm --name sparky_dev -p 5432:5432 -e POSTGRES_PASSWORD=postgres -e POSTGRES_DB=sparky_dev -d postgres:14.2-alpine3.15

