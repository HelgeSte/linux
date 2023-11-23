# Saving sed script for reference
# --------------
# In this example i'm using parantheses with \1, \2 etc, to edit grep commands from a file.

# The grep-commands.sh file used to grab only relevant info from the applicationHosts.file and edit it.
# It is using a file with commands similar to the following:
grep microsoft.com applicationHosts.config
grep apple.com applicationHosts.config
...
# Then it changes it to:
"grep domainname file" to "echo ; echo domainname: ; grep domainname file":

cat grep-commands.sh | \

# \1 = grep, \2 = domainname and \3 is the filename:
sed 's/\(grep\) \([0-9a-z.-]\+\) \(applicationHosts.config\)/echo  ; echo \2: ; \1 \2 \3/' \

| sh | \							# pipe result to shell
egrep ':|^$|binding protocol' | \				# keep lines containing :, empty lines and binding protocol.
grep -v ':[0-9]\+:[w.]*[0-9]\+.*ourdomain.com | \		# remove webhotell addresses
sed -e 's/.*:[0-9]*://' -e 's/".*$//'| \			# remove ^.*:80: and :443:
egrep -v 'virtualDirectory' > all-hostheaders-not-sorted.txt	# cleanup (in this example, only virtualDirectory lines)


# It probably faster to just use a domain list, but in the example above, I had already prepared the commands in an
# excel sheet, before I started. 
#------------------------------------------------------------------------------------------------------------------
