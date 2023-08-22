#!/usr/bin/env bash

mkdir -p data

# TODO loop over files
if ! [ -f data/companies.csv ]; then
	curl https://examples.citusdata.com/tutorial/companies.csv > data/companies.csv
fi

if ! [ -f data/campaigns.csv ]; then
	curl https://examples.citusdata.com/tutorial/campaigns.csv > data/campaigns.csv
fi

if ! [ -f data/ads.csv ]; then
	curl https://examples.citusdata.com/tutorial/ads.csv > data/ads.csv
fi

psql -c "\copy companies from 'data/companies.csv' with csv"
psql -c "\copy campaigns from 'data/campaigns.csv' with csv"
psql -c "\copy ads from 'data/ads.csv' with csv"
