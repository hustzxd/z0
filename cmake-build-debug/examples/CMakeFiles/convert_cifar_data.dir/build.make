# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.6

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /home/zxd/software/clion-2016.3.2/bin/cmake/bin/cmake

# The command to remove a file.
RM = /home/zxd/software/clion-2016.3.2/bin/cmake/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/zxd/caffe

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/zxd/caffe/cmake-build-debug

# Include any dependencies generated for this target.
include examples/CMakeFiles/convert_cifar_data.dir/depend.make

# Include the progress variables for this target.
include examples/CMakeFiles/convert_cifar_data.dir/progress.make

# Include the compile flags for this target's objects.
include examples/CMakeFiles/convert_cifar_data.dir/flags.make

# Object files for target convert_cifar_data
convert_cifar_data_OBJECTS =

# External object files for target convert_cifar_data
convert_cifar_data_EXTERNAL_OBJECTS =

examples/cifar10/convert_cifar_data-d: examples/CMakeFiles/convert_cifar_data.dir/build.make
examples/cifar10/convert_cifar_data-d: lib/libcaffe-d.so.1.0.0-rc3
examples/cifar10/convert_cifar_data-d: lib/libproto-d.a
examples/cifar10/convert_cifar_data-d: /usr/lib/x86_64-linux-gnu/libboost_system.so
examples/cifar10/convert_cifar_data-d: /usr/lib/x86_64-linux-gnu/libboost_thread.so
examples/cifar10/convert_cifar_data-d: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
examples/cifar10/convert_cifar_data-d: /usr/lib/x86_64-linux-gnu/libboost_chrono.so
examples/cifar10/convert_cifar_data-d: /usr/lib/x86_64-linux-gnu/libboost_date_time.so
examples/cifar10/convert_cifar_data-d: /usr/lib/x86_64-linux-gnu/libboost_atomic.so
examples/cifar10/convert_cifar_data-d: /usr/lib/x86_64-linux-gnu/libglog.so
examples/cifar10/convert_cifar_data-d: /usr/lib/x86_64-linux-gnu/libgflags.so
examples/cifar10/convert_cifar_data-d: /usr/lib/x86_64-linux-gnu/libprotobuf.so
examples/cifar10/convert_cifar_data-d: /usr/lib/x86_64-linux-gnu/libglog.so
examples/cifar10/convert_cifar_data-d: /usr/lib/x86_64-linux-gnu/libgflags.so
examples/cifar10/convert_cifar_data-d: /usr/lib/x86_64-linux-gnu/libprotobuf.so
examples/cifar10/convert_cifar_data-d: /usr/lib/x86_64-linux-gnu/libhdf5_cpp.so
examples/cifar10/convert_cifar_data-d: /usr/lib/x86_64-linux-gnu/libhdf5.so
examples/cifar10/convert_cifar_data-d: /usr/lib/x86_64-linux-gnu/libpthread.so
examples/cifar10/convert_cifar_data-d: /usr/lib/x86_64-linux-gnu/libsz.so
examples/cifar10/convert_cifar_data-d: /usr/lib/x86_64-linux-gnu/libz.so
examples/cifar10/convert_cifar_data-d: /usr/lib/x86_64-linux-gnu/libdl.so
examples/cifar10/convert_cifar_data-d: /usr/lib/x86_64-linux-gnu/libm.so
examples/cifar10/convert_cifar_data-d: /usr/lib/x86_64-linux-gnu/libhdf5_hl_cpp.so
examples/cifar10/convert_cifar_data-d: /usr/lib/x86_64-linux-gnu/libhdf5_hl.so
examples/cifar10/convert_cifar_data-d: /usr/lib/x86_64-linux-gnu/liblmdb.so
examples/cifar10/convert_cifar_data-d: /usr/lib/x86_64-linux-gnu/libleveldb.so
examples/cifar10/convert_cifar_data-d: /usr/lib/x86_64-linux-gnu/libsnappy.so
examples/cifar10/convert_cifar_data-d: /usr/local/cuda-8.0/lib64/libcudart.so
examples/cifar10/convert_cifar_data-d: /usr/local/cuda-8.0/lib64/libcurand.so
examples/cifar10/convert_cifar_data-d: /usr/local/cuda-8.0/lib64/libcublas.so
examples/cifar10/convert_cifar_data-d: /usr/local/cuda-8.0/lib64/libcublas_device.a
examples/cifar10/convert_cifar_data-d: /usr/local/cuda-8.0/lib64/libcudnn.so
examples/cifar10/convert_cifar_data-d: /usr/lib/x86_64-linux-gnu/libopencv_highgui.so.2.4.9
examples/cifar10/convert_cifar_data-d: /usr/lib/x86_64-linux-gnu/libopencv_imgproc.so.2.4.9
examples/cifar10/convert_cifar_data-d: /usr/lib/x86_64-linux-gnu/libopencv_core.so.2.4.9
examples/cifar10/convert_cifar_data-d: /usr/lib/liblapack.so
examples/cifar10/convert_cifar_data-d: /usr/lib/libcblas.so
examples/cifar10/convert_cifar_data-d: /usr/lib/libatlas.so
examples/cifar10/convert_cifar_data-d: /usr/lib/x86_64-linux-gnu/libpython2.7.so
examples/cifar10/convert_cifar_data-d: /usr/lib/x86_64-linux-gnu/libboost_python.so
examples/cifar10/convert_cifar_data-d: examples/CMakeFiles/convert_cifar_data.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/zxd/caffe/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Linking CXX executable cifar10/convert_cifar_data-d"
	cd /home/zxd/caffe/cmake-build-debug/examples && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/convert_cifar_data.dir/link.txt --verbose=$(VERBOSE)
	cd /home/zxd/caffe/cmake-build-debug/examples && ln -sf /home/zxd/caffe/cmake-build-debug/examples/cifar10/convert_cifar_data-d /home/zxd/caffe/cmake-build-debug/examples/cifar10/convert_cifar_data-d.bin

# Rule to build all files generated by this target.
examples/CMakeFiles/convert_cifar_data.dir/build: examples/cifar10/convert_cifar_data-d

.PHONY : examples/CMakeFiles/convert_cifar_data.dir/build

examples/CMakeFiles/convert_cifar_data.dir/requires:

.PHONY : examples/CMakeFiles/convert_cifar_data.dir/requires

examples/CMakeFiles/convert_cifar_data.dir/clean:
	cd /home/zxd/caffe/cmake-build-debug/examples && $(CMAKE_COMMAND) -P CMakeFiles/convert_cifar_data.dir/cmake_clean.cmake
.PHONY : examples/CMakeFiles/convert_cifar_data.dir/clean

examples/CMakeFiles/convert_cifar_data.dir/depend:
	cd /home/zxd/caffe/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/zxd/caffe /home/zxd/caffe/examples /home/zxd/caffe/cmake-build-debug /home/zxd/caffe/cmake-build-debug/examples /home/zxd/caffe/cmake-build-debug/examples/CMakeFiles/convert_cifar_data.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : examples/CMakeFiles/convert_cifar_data.dir/depend

