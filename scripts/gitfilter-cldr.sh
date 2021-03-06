#!/bin/sh
# Copyright (C) 2015, International Business Machines Corporation and Others. All Rights Reserved.
# This file is part of the ICU project. http://icu-project.org

# A filter to add in the ICU bug tracking numbers.

set -x
git filter-branch -f --msg-filter  'sed -e "s%cldrbug \([0-9]*\)[ :]*\(.*\)$%\2\\
\\
X-Ticket-URL: https://unicode.org/cldr/trac/ticket/\1%g"'  -- --all
