What is it: PowerShell script to join hosts files and remove comments

Requirements: Windows 7 - 11

hosts can be obtained from various sources such as github.com/StevenBlack/hosts

Thanks to:

sschuberth at stackoverflow.com/users/1127485/sschuberth

someone at docs.microsoft.com/en-us/answers/questions/405610/powershell-change-save-encoding-how-to-convert-sev.html

ChatGPT

To do:

Fetch new file from a selected source(s)

Retain and update first lines such as

127.0.0.1	localhost
::1 ip6-localhost ip6-loopback
fe00::0 ip6-localnet
ff00::0 ip6-mcastprefix
ff02::1 ip6-allnodes
ff02::2 ip6-allrouters
