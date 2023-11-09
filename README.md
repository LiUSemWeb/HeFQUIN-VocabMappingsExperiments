# HeFQUIN-VocabMappingsExperiments
This repository contains artifacts and resources for conducting experiments related to the paper ‘Considering Vocabulary Mappings in Query Plans for Federations of RDF Data Sources’ ([download camera-ready version](https://www.ida.liu.se/~sijch63/files/vocabMapping_CoopIS2023.pdf)). 

The complete resources can be downloaded from [Zenodo](https://doi.org/10.5281/zenodo.8114487).


## Federations
We provide three federations for the evaluation:
- Fed0: all federation members use the global vocabulary.
- Fed1: all federation members use the same local vocabulary, which is different from the global vocabulary.
- Fed2: each federation member uses a different local vocabulary.

For detailed instructions and configuration files to set up each federation, navigate to the **federations** directory (e.g., [Fed0](https://github.com/LiUSemWeb/HeFQUIN-VocabMappingsExperiments/tree/main/federations/fed0)).


## Datasets
To construct the aforementioned federations, we use the dataset generator of [Lehigh University Benchmark (LUBM)](http://swat.cse.lehigh.edu/projects/lubm/). We generate data for ten universities and split them into ten separate datasets (one per university). 
An instruction for generating datasets can be found in the folder [datasets](https://github.com/LiUSemWeb/HeFQUIN-VocabMappingsExperiments/tree/main/datasets). 

* For Fed1, we directly use the generated datasets and construct [vocabulary mappings](https://github.com/LiUSemWeb/HeFQUIN-VocabMappingsExperiments/blob/main/federations/fed1/mappings_complete.ttl) between the global vocabulary and local vocabulary that are used in the generated datasets.
* For Fed0, to create datasets with global vocabulary, the script 'construct_globaldatasets.sh' can be found under [datasets](https://github.com/LiUSemWeb/HeFQUIN-VocabMappingsExperiments/tree/main/datasets):
	```
	sh construct_globaldatasets.sh
	```
* For each federation member of Fed2, we change the IRIs of the vocabulary terms used in the dataset of each member by appending a member-specific suffix (ranging from 0 to 9) to each such IRI. So this federation is structurally the same as Fed1, but with a different vocabulary for each federation member. 

	To create datasets with local vocabularies, find the script 'rewrite_to_localschema.sh' under the folder [datasets](https://github.com/LiUSemWeb/HeFQUIN-VocabMappingsExperiments/tree/main/datasets) and run the following command:
	```
	sh rewrite_to_localschema.sh
	```

Alternatively, you can download generated datasets directly from the [Zenodo](https://zenodo.org/record/8114487) in the directory **datasets**.


## Queries
We designed seven benchmark queries expressed in terms of the global vocabulary. 
These queries differ regarding the types of vocabulary mapping rules that are relevant to them, and can be used for all three federations.
![table_queries](figure/table_queries.png)

You can find all the queries in the [queries](https://github.com/LiUSemWeb/HeFQUIN-VocabMappingsExperiments/tree/main/queries) folder.


## Experiments
To execute experiments after setting up a federation, queries can be invoked from the test driver HeFQUIN engine using a shell script. We provide an example script under the [federations](https://github.com/LiUSemWeb/HeFQUIN-VocabMappingsExperiments/tree/main/experiments/exp1_noEqv_SHJ) directory. 
```
sh run_experiment.sh
```

You can find the latest implementation of the HeFQUIN engine in the [Github repository](https://github.com/LiUSemWeb/HeFQUIN).
For the evaluation in this paper, we use compilable JAR files for the HeFQUIN engine, which can be located in the [experiments](https://github.com/LiUSemWeb/HeFQUIN-VocabMappingsExperiments/tree/main/experiments) directory.


### Results
This repository also contains an analysis of the experiment results, including query execution time and query planning time, in the [resultsAnalysis](https://github.com/LiUSemWeb/HeFQUIN-VocabMappingsExperiments/tree/main/resultsAnalysis) directory. 
If you are interested in the original log files, all these row data can be downloaded from the **experiments** directory on [Zenodo](https://doi.org/10.5281/zenodo.8114487).
