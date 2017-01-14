file(REMOVE_RECURSE
  "cifar10/convert_cifar_data-d.pdb"
  "cifar10/convert_cifar_data-d"
)

# Per-language clean rules from dependency scanning.
foreach(lang )
  include(CMakeFiles/convert_cifar_data.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
