<h3>VALIANT: An EDA Tool Flow for Side-Channel Leakage Evaluation and Tailored Protection<h3>

Copyright: University of Florida, IIT Kharagpur

<h5>This repository contains the automated toolflow for node-wise TVLA calculation for Gate-Level Netlists.</h5>


To calculate TVLA for each node of a gate-level netlist the following steps need to be followed:


    For Combinational Circuit, ../src/tvla <gate_level_netlist.v> <no_of_traces> <std_cell_lib.v> <TOP_MODULE_NAME> -genstimulus

    For Sequential Circuit, ../src/tvla <gate_level_netlist.v> <no_of_traces> <std_cell_lib.v> <TOP_MODULE_NAME> -genstimulus seq 0.5 -fullscan <CLK_NAME> <RST_NAME> <1(if active high)/0(if active low)>

Example :

../src/tvla ../test/c17_syn.v 10000 ../freepdk/gscl45nm.lib c17 -genstimulus

../src/tvla ../test/s27_syn.v 100000 ../freepdk/gscl45nm.lib s27 -genstimulus seq 0.5 fullscan CLK RST 1

The TVLA values for each internal node are dumped to a file named : 'tvla_<module_name>.csv' inside 'results_updated' folder.

Overall = XXXXX -- denotes the cumulative sum of TVLA values of all internal node of the netlist


**BibTeX**
```
@ARTICLE{10325657,
  author={Sadhukhan, Rajat and Saha, Sayandeep and Paria, Sudipta and Bhunia, Swarup and Mukhopadhyay, Debdeep},
  journal={IEEE Transactions on Computers}, 
  title={VALIANT: An EDA Flow for Side-Channel Leakage Evaluation and Tailored Protection}, 
  year={2024},
  volume={73},
  number={2},
  pages={436-450},
  keywords={Logic gates;Codes;Standards;Circuit faults;Very large scale integration;Design automation;Computer science;Test Vector Leakage Assessment;domain-oriented-masking;side channel attack;EDA;protection},
  doi={10.1109/TC.2023.3333164}}

```

**Text**
```
R. Sadhukhan, S. Saha, S. Paria, S. Bhunia and D. Mukhopadhyay, "VALIANT: An EDA Flow for Side-Channel Leakage Evaluation and Tailored Protection," in IEEE Transactions on Computers, vol. 73, no. 2, pp. 436-450, Feb. 2024, doi: 10.1109/TC.2023.3333164.
