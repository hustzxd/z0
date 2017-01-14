file(REMOVE_RECURSE
  "siamese/convert_mnist_siamese_data-d.pdb"
  "siamese/convert_mnist_siamese_data-d"
)

# Per-language clean rules from dependency scanning.
foreach(lang )
  include(CMakeFiles/convert_mnist_siamese_data.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
