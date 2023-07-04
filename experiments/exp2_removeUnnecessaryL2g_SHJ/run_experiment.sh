#!/bin/bash


declare approach_config

export queries_path=$1
export number_of_runs=$2
export engine=$3
export federation=$4
export log_path=$5


export group_name=$(basename  $queries_path)
mkdir -p "${log_path}"

for QUERY_FILE in "$queries_path"/*
do
  export file_name=$(basename ${QUERY_FILE})
  
  export query_name="${file_name%.*}"
  for run in $(seq 1 $number_of_runs)
  do
    export log_file_path=${log_path}/${query_name}-${run}.log
    java -Xmx46048m -cp $engine se.liu.ida.hefquin.cli.RunQueryWithoutSrcSel --query ${QUERY_FILE} --federationDescription $federation --suppressResultPrintout --printLogicalPlan --ignorePhysicalOpsForLogicalAddOps --printQueryProcStats --printQueryProcMeasurements --printPhysicalPlan > $log_file_path 2>&1
  done 
done
