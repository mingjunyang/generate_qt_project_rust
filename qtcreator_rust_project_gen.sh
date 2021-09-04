#!/usr/bin/env bash

workspace=""
project_name=""

if [[ $1 == "" ]];
then
  echo "no project workspace"
  exit 1
else
  workspace=$1
fi

if [[ $2 ]];
then
  project_name=$(basename $(pwd))
fi

if [[ -d $workspace ]]; then
  cd $workspace
  project_name="$(basename $(pwd))"
  echo $project_name
  touch "$project_name".creator
  touch "$project_name".files
  echo "-std=c17" >> "$project_name".cflags
  echo "-std=c++17" >> "$project_name".cxxflags
  touch "$project_name".includes
  touch "$project_name".config
else
  echo "$workspace not a workspace"
  exit 1
fi

rs_file=$(fd "\.rs$")
toml_file=$(fd "\.toml$")
md_file=$(fd "\.md$")
glsl_file=$(fd "\.glsl$")

for item in $rs_file; do
  echo $item >> "$project_name".files
done

for item in $toml_file; do
  echo $item >> "$project_name".files
done

for item in $md_file; do
  echo $item >> "$project_name".files
done

for item in $glsl_file; do
  echo $item >> "$project_name".files
done
