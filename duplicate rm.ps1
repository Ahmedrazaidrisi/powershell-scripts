ls *.txt -recurse | get-filehash | group -property hash | where { $_.count -gt 1 } | % { $_.group | select -skip 1 } | del
