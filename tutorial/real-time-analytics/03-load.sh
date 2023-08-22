#!/usr/bin/env bash

mkdir -p data

# TODO loop over files
if ! [ -f data/users.csv ]; then
	curl https://examples.citusdata.com/tutorial/users.csv > data/users.csv
fi

if ! [ -f data/events.csv ]; then
	curl https://examples.citusdata.com/tutorial/events.csv > data/events.csv
fi

psql -c "\copy github_users from 'data/users.csv' with csv"
psql -c "\copy github_events from 'data/events.csv' with csv"
