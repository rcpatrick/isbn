## isbn

## Install and Use
From Github:
```
git clone https://github.com/rcpatrick/isbn.git
```
From my website:
```
git clone git://git.raypatrick.xyz/isbn.git
```
Then:
```
cd isbn
sudo make install
```

NAME
----

isbn - Retrieves title, author, publisher, and publishing date of any book, given its 10- or 13-digit ISBN number. 

SYNOPSIS
--------

`isbn ISBN_NUMBER [-b]`

DESCRIPTION
-----------

isbn is a simple utility that accepts a 10- or 13-digit ISBN number, then queries the Google Books API to retrieve its title, author, publisher, and year of publication. It can display this information on stdout as plain text or formatted as a LaTeX .bibtex entry.

OPTIONS
-------

`ISBN_NUMBER`

:   May be a 10- or 13-digit ISBN number, with or without dashes. For example: 0-446-60725-8, or 0446607258.

`-b, --bibtex`

:   Format book information as a LaTeX .bibtex entry. If this option is not specified, output will be in plain text.

BUGS
----

Information provided by this tool is no better than that loaded into the Google Books database. Always double-check the output of the program.

AUTHOR
------

Written 2021 by Ray Patrick.

SEE ALSO
--------

jq(1)
