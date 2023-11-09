# Datasets

The datasets are generated using LUBM dataset generator:
```
git clone https://github.com/rvesse/lubm-uba.git
```

For our evaluation, we generated data for ten universities and split into ten separate datasets (one per university). To generate one file per university
```
./generate.sh -o /home/sijch63/vocabularyMapping/datasets/original_datasets --format NTRIPLES --consolidate Partial -u 10
```



One federation member contains one university, in the first scenario, each university have a local schema, and corresponding vocabulary mapping.
To create datasets with local vocabularies, run the following command:
```
sh rewrite_to_localschema.sh
```

The generated datasets would be stored in the directory 'diffschema_datasets'
The corresponding vocabulary mapping files can be found under the directory "../federations/fed_diff"


For the evaluation, all datasets with global vocabulary need to be created, run:
```
sh construct_globaldatasets.sh
```