file(REMOVE_RECURSE
  "mnist/convert_mnist_data-d.pdb"
  "mnist/convert_mnist_data-d"
)

# Per-language clean rules from dependency scanning.
foreach(lang )
  include(CMakeFiles/convert_mnist_data.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
