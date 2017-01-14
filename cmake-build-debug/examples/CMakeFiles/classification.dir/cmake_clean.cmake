file(REMOVE_RECURSE
  "cpp_classification/classification-d.pdb"
  "cpp_classification/classification-d"
)

# Per-language clean rules from dependency scanning.
foreach(lang )
  include(CMakeFiles/classification.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
