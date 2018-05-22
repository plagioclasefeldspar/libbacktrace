# An awk script to determine the type of a file.
/\177ELF\001/ { if (NR == 1) { print "elf32"; exit } }
/\177ELF\002/ { if (NR == 1) { print "elf64"; exit } }
/\114\001/    { if (NR == 1) { print "pecoff"; exit } }
/\144\206/    { if (NR == 1) { print "pecoff"; exit } }
/\001\337/    { if (NR == 1) { print "xcoff32"; exit } }
/\001\367/    { if (NR == 1) { print "xcoff64"; exit } }
/\xFE\xED\xFA\xCE/ { if (NR == 1) { print "macho32"; exit } }
/\xCE\xFA\xED\xFE/ { if (NR == 1) { print "macho32"; exit } }
/\xFE\xED\xFA\xCF/ { if (NR == 1) { print "macho64"; exit } }
/\xCF\xFA\xED\xFE/ { if (NR == 1) { print "macho64"; exit } }
/\xCA\xFE\xBA\xBE/ { if (NR == 1) { print "macho-fat"; exit } }
/\xBE\xBA\xFE\xCA/ { if (NR == 1) { print "macho-fat"; exit } }
