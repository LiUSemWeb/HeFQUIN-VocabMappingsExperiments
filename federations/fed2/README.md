To publish RDF datasets via virtuoso, you can start a virtuoso docker for each federation member using the following command:

`sh deploy.sh`

If the port of a federation member is set as 8890, then the dataset could be accessed via the following address:
http://127.0.0.1:8890/sparql

To check whether it works, an example command can be used to retrieved data from the server:
```
curl -X POST http://127.0.0.1:8890/sparql -H "Accept: text/csv" --data-urlencode 'query=SELECT * WHERE {?s ?p ?o }'
```

Note: this address need to be specified in the federation description file when running experiment.
