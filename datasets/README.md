# Datasets

The datasets are generated using LUBM dataset generator:
```
git clone https://github.com/rvesse/lubm-uba.git
```

For our evaluation, we generated data for ten universities and split into ten separate datasets (one per university). To generate one file per university
```
./generate.sh -o /home/sijch63/vocabularyMapping/datasets/original_datasets --format NTRIPLES --consolidate Partial -u 10
```
