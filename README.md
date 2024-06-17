# HeFQUIN-VocabMappingsExperiments
This repository contains artifacts and resources for conducting experiments related to the paper [‘Considering Vocabulary Mappings in Query Plans for Federations of RDF Data Sources’](https://www.ida.liu.se/~sijch63/files/vocabMapping_CoopIS2023.pdf).

The complete resources can be downloaded from [Zenodo](https://doi.org/10.5281/zenodo.8114487).

## Federations

Three federations are provided for evaluation:
- **Fed0**: All federation members use the global vocabulary.
- **Fed1**: All federation members use the same local vocabulary, distinct from the global vocabulary.
- **Fed2**: Each federation member use a different local vocabulary.

## Datasets

To construct the federations, the dataset generator of the [Lehigh University Benchmark (LUBM)](http://swat.cse.lehigh.edu/projects/lubm/) is employed. Data about universities is generated and split into separate datasets, one per university.

- **Fed1**: The generated datasets are directly used, and we construct [vocabulary mappings](https://github.com/LiUSemWeb/HeFQUIN-VocabMappingsExperiments/blob/main/federations/fed1/mappings_complete.ttl) between the global and local vocabularies.
- **Fed0**: To create datasets with global vocabulary, use the script `construct_globaldatasets.sh` located in the [datasets](https://github.com/LiUSemWeb/HeFQUIN-VocabMappingsExperiments/tree/main/datasets) directory.
- **Fed2**: To construct datasets used by federation members of Fed2, we modify the IRIs of the vocabulary terms used in the dataset of each member by appending a member-specific suffix (ranging from 0 to 9) to each IRI. Create these datasets using the script `rewrite_to_localschema.sh` in the [datasets](https://github.com/LiUSemWeb/HeFQUIN-VocabMappingsExperiments/tree/main/datasets) directory.

Alternatively, generated datasets can be directly downloaded from [Zenodo](https://zenodo.org/record/8114487) in the **datasets** directory.

## Queries

Seven queries, expressed in terms of the global vocabulary, are designed. These queries vary regarding the types of vocabulary mapping rules relevant to them and can be used for all three federations.

![Benchmark Queries](figure/table_queries.png)

All queries are available in the [queries](https://github.com/LiUSemWeb/HeFQUIN-VocabMappingsExperiments/tree/main/queries) directory.

## Experiment Set-Up (step-by-step)

### Step 1: Generate Datasets

Prepare the dataset generator using the following commands:
```
cd datasets
git clone https://github.com/rvesse/lubm-uba.git
cd lubm-uba
mvn clean install
```
Then, generate datasets for ten universities:
```
./generate.sh -o ../original_datasets --format NTRIPLES --consolidate Partial -u 10
```
The generated datasets are stored in the `original_datasets` folder within the `dataset` directory.

### Step 2: Set Up a Federation

For an experiment, you can choose use any of the following federations. The following components are required to set up a federation:

- Datasets of each federation member
- A `docker-compose.yaml` file specifing the path to the dataset of each federation member and a port number to access the dataset
- A file storing vocabulary mappings for federation members (e.g., `mappings_complete.ttl`)
- A federation description file (e.g., `federation_desc_same.ttl`) specifing all federation members, corresponding URI addresses (e.g., `http://127.0.0.1:8890/sparql`), corresponding vocabulary mapping files.

#### To set up Fed1

1. Navigate to the corresponding directory and copy the generated datasets:
   ```
   cd federations/fed1
   sh copy_datasets.sh
   ```

2. In the file `docker-compose.yaml`, specify the path to the dataset of each federation member and a port number to access the dataset. Then, publish RDF datasets via Virtuoso using the following command:
   ```
   sh deploy.sh
   ```

Verify whether the dataset is accessibile. For example, if the port of a federation member is set to 8890, use the following command to check whether the server is accessible:
```
curl -X POST http://127.0.0.1:8890/sparql -H "Accept: text/csv" --data-urlencode 'query=SELECT count(*) WHERE {?s ?p ?o }'
```
3. All federation members share the same group of vocabulary mapping rules, which are stored in the file `mappings_complete.ttl` under the [datasets](https://github.com/LiUSemWeb/HeFQUIN-VocabMappingsExperiments/tree/main/federations/fed1) directory. The path to this file needs to be specified in the federation description file. This federation description is required for running experiments with HeFQUIN engine. 

#### To set up Fed0

1. Create datasets with the global vocabulary using the following command. Then the datasets with global vocabularies are stored in the `globalvocab_datasets` folder within the `dataset` directory:
   ```
   cd datasets
   sh construct_globaldatasets.sh
   ```

2. Navigate to the corresponding directory and copy the generated datasets:
   ```
   cd federations/fed0
   sh copy_datasets.sh
   ```

3. Similarly to Fed1, update configuration in the `docker-compose.yaml` file and publish RDF datasets via Virtuoso using the following command:
   ```
   sh deploy.sh
   ```
Note that no vocabulary mapping rules are needed in this setup.

#### To set up Fed2

1. Rewrite original datasets to datasets with local vocabularies (distinct among different federation members):
   ```
   cd datasets
   sh rewrite_to_localschema.sh
   ```

2. Navigate to the directory for Fed2 and copy the generated datasets:
   ```
   cd federations/fed2
   sh copy_datasets.sh
   ```

3. Similarly to Fed1, update configuration in the `docker-compose.yaml` file and publish RDF datasets via Virtuoso using the following command:
   ```
   sh deploy.sh
   ```
4. To get vocabulary mapping rules for each federaion member, run the following command. A new directory `mappings` with files storing mapping rules will be generated:
   ```
   sh constructMapping_comp.sh
   ```
Note that the path to each vocabulary mapping file needs to be specified in the federation description file (i.e., 'federation_desc_comp.ttl' under [fed2](https://github.com/LiUSemWeb/HeFQUIN-VocabMappingsExperiments/tree/main/federations/fed2)).

### Step 3: Execute Experiments
After setting up a federation, several parameters are required to execute experiments:
- `PATH_TO_QUERIES`: Path specifying the queries to be used for testing
- `REPEAT_TIMES`: Number of runs for each query
- A compilable JAR file of the HeFQUIN engine
- `PATH_TO_THE_FEDERATION_DESCRIPTION_FILE`: Path to a federation description file (e.g., `federation_desc_same.ttl`)
- `OUTPUT_DIRECTORY`: Directory to store log files

In the [experiments](https://github.com/LiUSemWeb/HeFQUIN-VocabMappingsExperiments/tree/main/experiments/exp1_noEqv_SHJ) directory, I provide a compilable JAR file (built on 2024-06-14) of the HeFQUIN engine and a script for running experiments are provided for each experiment. An example command for running experiments is shown below:

```
./run_experiment.sh [PATH_TO_QUERIES] [REPEAT_TIMES] HeFQUIN-0.0.3-SNAPSHOT.jar [PATH_TO_THE_FEDERATION_DESCRIPTION_FILE] [OUTPUT_DIRECTORY]
```

To reproduce compilable JAR files of the HeFQUIN engine for each experiment:
- exp1_noEqv_SHJ: in 'ExampleEngineConf.ttl', set the argument 'ignorePhysicalOpsForLogicalAddOps' to true in line 60. Then, uncomment line 43 in 'LogicalOptimizerImpl.java'
- exp2_removeUnnecessaryL2g_SHJ: in 'ExampleEngineConf.ttl', set the argument 'ignorePhysicalOpsForLogicalAddOps' to true in line 60. Then, uncomment line 43 and 46 in 'LogicalOptimizerImpl.java'
- exp3_pullL2gOverJoins_SHJ/pullL2gOverUnion: in 'ExampleEngineConf.ttl', set the argument 'ignorePhysicalOpsForLogicalAddOps' to true in line 60. Then, uncomment line 43 and 48 in 'LogicalOptimizerImpl.java'
- exp3_pullL2gOverJoins_SHJ/pullL2gOverUnionAndJoin: in 'ExampleEngineConf.ttl', set the argument 'ignorePhysicalOpsForLogicalAddOps' to true in line 60. Then, uncomment line 43, 48 and 49 in 'LogicalOptimizerImpl.java'
- exp4_removePairsOfL2gAndG2l_BJ: in 'ExampleEngineConf.ttl', set the argument 'ignorePhysicalOpsForLogicalAddOps' to false in line 60. Then, uncomment line 43, 51, 52 and 53 in 'LogicalOptimizerImpl.java'

### Note

The HeFQUIN-0.0.2 version is used for the evaluation in the paper ‘Considering Vocabulary Mappings in Query Plans for Federations of RDF Data Sources’. The generated datasets, compilable JAR files, and original log files can be downloaded from [Zenodo](https://doi.org/10.5281/zenodo.8114487).
```