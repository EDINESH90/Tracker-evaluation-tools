# Tracker-evaluation-tools
A repository containing various tracker evaluation tools on MATLAB.

Here are a list of tools developed:

1. tracker renaming tool



*More tools are on their way.*

## Tracker renaming tool

The tracker renaming tool is designed for researchers using MATLAB to conduct experiments of trackers, in case of misspelling or wanting to change the trackers' names in order to add some additional parameter memos. 

To use this tool, easily configure the **1. original tracker name&path** & **2. target tracker name&path**, as well as the **3. name of the sequences** in the script, and you are good to go.

This tool is already tested when I was developing [ARCF (Learning Aberrance repressed correlation filter for real-time UAV tracking)](https://github.com/huang-ziyuan/ARCF-tracker).

## Aberrance repression performance evaluation tool

This is designed for ARCF and its follow-up works to evaluate the aberrance repression performances. 

To use this tool, please ensure that response maps are already properly stored in the result file of the tracker as in the name of 'map_diff'. After that, just configure the **1. name&path of compared tracker**, **2. name&path of current tracker**, and **3.name of the sequence** (for single sequence evaluations, *multiple sequence evaluation tool is on its way*.) 