

# Cleaning up a Git repository history.

I copied, modified, and compiled various files found for trying to re-write a git repository history. 

These are the ones I found that worked in identifiying the largest files and removing them from the history. 

### Workflow:

1. Use `git_search.sh` to find and list largest files (in descending order)
2. Once you identify the files to remove (say a file called `BinaryFile` or a directory called `Distrubtions`), you can remove via..
...File: `git_rm_part1.sh BinaryFile`..
...Directory: `git_rm_part1.sh Distributions/*..

3. Gargabe collect:
...`git_rm_part2.sh`

**NOTE**: You can combine 2 and 3 via:
...git_rm_part1.sh <File> && git_rm_part2.sh

**Result**:There may be issues with the scripts or some extra lines but this helped me clean up a project that had inflated to ~4 GB due to *.tar.gz files being saved down to < 400 MB

References for scripts:
------------------------------

`git_search.sh` script from answer by [raphinesse](https://stackoverflow.com/users/380229/raphinesse) found [here](https://stackoverflow.com/questions/10622179/how-to-find-identify-large-files-commits-in-git-history)

`git_rm_part2.sh` script from answer by [Sam Watkins](https://stackoverflow.com/users/218294/sam-watkins) found [here](https://stackoverflow.com/questions/10622179/how-to-find-identify-large-files-commits-in-git-history)
