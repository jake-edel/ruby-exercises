#!/bin/zsh

while IFS= read -r line
do
  echo "$line"
  rspec "$line"
done < extension_specs

# rspec command-query/spec/*
# rspec data-types/collections/spec/*
# rspec data-types/collections/advanced_nested_collections/spec/*
# rspec data-types/ints_and_floats/spec/*
# rspec data-types/strings/spec/*
