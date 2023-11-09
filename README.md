# HeFQUIN-VocabMappingsExperiments
This repository contains artifacts related to the experiments for the paper ‘Considering Vocabulary Mappings in Query Plans for Federations of RDF Data Sources’ ([download camera-ready version](https://www.ida.liu.se/~sijch63/files/vocabMapping_CoopIS2023.pdf)). 

The complete resources can be downloaded from [Zenodo](https://doi.org/10.5281/zenodo.8114487).


## Federations
We provide three federations for the evaluation (each of them consists of ten federation members):
- Fed0: all federation members use the global vocabulary;
- Fed1: all federation members use the same local vocabulary, which is different from the global vocabulary;
- Fed2: each federation member uses a different local vocabulary.

To set up each federation, the detailed instructions and configuration files can be found under the directory **federations** (e.g., [Fed0](https://github.com/LiUSemWeb/HeFQUIN-VocabMappingsExperiments/tree/main/federations/fed0)).


## Datasets
To construct the aforementioned federations, we use the dataset generator of [Lehigh University Benchmark (LUBM)](http://swat.cse.lehigh.edu/projects/lubm/) and generate data for ten universities and split them into ten separate datasets (one per university). 
An instruction for generating datasets can be found in the folder [datasets](https://github.com/LiUSemWeb/HeFQUIN-VocabMappingsExperiments/tree/main/datasets). 

* In the case of Fed1, we directly use the generated datasets and construct [vocabulary mappings](https://github.com/LiUSemWeb/HeFQUIN-VocabMappingsExperiments/blob/main/federations/fed1/mappings_complete.ttl) between the global vocabulary and local vocabulary that are used in the generated datasets.
* For Fed0, to create datasets with global vocabulary, the script 'construct_globaldatasets.sh' can be found under [datasets](https://github.com/LiUSemWeb/HeFQUIN-VocabMappingsExperiments/tree/main/datasets):
	```
	sh construct_globaldatasets.sh
	```
* Finally, for each federation member of Fed2, we change the IRIs of the vocabulary terms used in the dataset of each member by appending a member-specific suffix (ranging from 0 to 9) to each such IRI. So this federation is structurally the same as Fed1, but with a different vocabulary for each federation member. 
To create datasets with local vocabularies, find the script 'rewrite_to_localschema.sh' under the folder [datasets](https://github.com/LiUSemWeb/HeFQUIN-VocabMappingsExperiments/tree/main/datasets) and run the following command:
	```
	sh rewrite_to_localschema.sh
	```


Alternatively, you can download generated datasets directly from the [Zenodo](https://zenodo.org/record/8114487) under the directory **datasets**.


## Queries
We designed seven benchmark queries that are expressed in terms of the global vocabulary, and can be used for all three federations. 
These queries differ regarding the types of vocabulary mapping rules that are relevant to them, both in the context of the mapping-based rewriting of the initial query plans and in the context of the translation of intermediate results.
![table_queries](figure/table_queries.png)

You can find all the queries in the folder of [queries](https://github.com/LiUSemWeb/HeFQUIN-VocabMappingsExperiments/tree/main/queries).


## Experiments
To execute an experiment, a federation needs to be set up first, then use our HeFQUIN engine as the test driver, and call it via a shell script.
The latest implementation of the HeFQUIN engine can be found in the [Github repository](https://github.com/LiUSemWeb/HeFQUIN).

For the evaluation of this paper, we use compilable JAR files for the HeFQUIN engine, which you can find in the [experiments](https://github.com/LiUSemWeb/HeFQUIN-VocabMappingsExperiments/tree/main/experiments) directory.


### Results
We also include an analysis of the experiment results, including query execution time and query planning time, in the [resultsAnalysis](https://github.com/LiUSemWeb/HeFQUIN-VocabMappingsExperiments/tree/main/resultsAnalysis) directory. 
If you are interested in the original log files, all these row data can be downloaded from the **experiments** directory on [Zenodo](https://doi.org/10.5281/zenodo.8114487).
