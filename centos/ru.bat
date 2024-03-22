docker run --rm -v "~/Project":"/mnt/Project" \
           -w "/mnt/Project" viva64/pvs-studio:7.28 \
           sh -c 'mkdir build && cd build &&
                  cmake -DCMAKE_EXPORT_COMPILE_COMMANDS=On .. && make -j8 &&
                  pvs-studio-analyzer analyze ... -o report.log -j8 ...'