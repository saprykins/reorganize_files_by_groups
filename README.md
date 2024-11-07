How to run  
`./create_repositories.sh`

The same files can be used for several entities  
The script copies the file, it can copy it to several entities, THEN delete  
.sh script to be located in the same repository as "output"

Show the .extra-files with only header  
`find . -type f -name "*.extra" -size 28c`

Show empty CSV  
`find . -type f -name "*.csv" -empty`

Delete empty CSV  
`find . -type f -name "*.csv" -empty -delete`

Delete the .extra-files with only header  
`find . -type f -name "*.extra" -size 28c -exec rm {} \;`
