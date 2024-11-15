# Deletes all files from a temporary directory everyday @ 2:00AM
0 2 * * * rm -rf /Users/14088/OneDrive\Documents/CS131/temp

# Backup home directory every Sunday @ 3:00AM
0 3 * * 0 /Users/14088/OneDrive/backup.sh > tar -z Users/14088/OneDrive/b>

# Send personal email a "disk usage report" @ 8:30AM
30 8 * * * df -h | mail -s "Disk Usage Report" emily.lu@sjsu.edu

