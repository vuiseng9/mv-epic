
# EpicFlow on Middlebury dataset
1. Generate DeepMatch sparse set ```cd deepmatch; ./run_deepmatch_middlebury.sh```
2. Build and run SED ```cd sed; mkdir build; cd build; cmake ..; make; cd .. ; ./run_sed_middlebury.sh```
3. Build and run EpicFlow ```cd epicflow; mkdir build; cd build; cmake ..; make; cd ..; run_epicflow_middlebury.sh```
4. convert .flo of EpicFlow to .png ```cd epicflow/output_middlebury/; ./run_flo2png.sh"
