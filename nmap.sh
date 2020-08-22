#!/bin/bash
# Script made to assist in the studying of nmap and it's flag functionality.
# Written by Jack Rafter.
echo "Welcome to the nmap study script."
echo "Please enter your answers based on the exact specification"
# Display the help page if option -h is used or known option is not recognized.
displayUsage(){
echo "Usage: ./studyscripts.sh <option>"
echo "Will determine whether we will be studying the different aspects of nmap"
echo "Options: "
echo "-h Print this help message."
echo "-hd Host Discovery."
echo "-st Scan Techniques."
echo "-ps Port Specifications and Scan Order"
echo "-sv Service/ Version Detection."
echo "-ss Script Scan."
echo "-os OS Detection."
echo "-tp Timing and Performance."
echo "-fes Firewall/IDS and Evasion and Spoofing"
echo "-op Output."
echo "-m Misc."
echo ""
}

# Methods executing each option
opt_hd(){
score=0
echo "Host Discovery"
echo "Please enter only the flag abbreviation"
echo "Highest score possible is 10"
echo ""
echo -n "List Scan - simply list targets to scan: "
read input
	if [ $input == "-sL" ]; then
		echo "Correct"; let "score++"; echo "Score: $score"
	else
		echo "Incorrect"; echo "Score: $score"
	fi
echo ""
echo -n "Ping Scan - disable port scan: "
read input
        if [ $input == "-sn" ]; then
                echo "Correct"; let "score++"; echo "Score: $score"
        else
                echo "Incorrect"; echo "Score: $score"
        fi
echo ""
echo -n "Treat all hosts as online -- skip host directory: "
read input
        if [ $input == "-Pn" ]; then
                echo "Correct"; let "score++"; echo "Score: $score"
        else
                echo "Incorrect"; echo "Score: $score"
        fi
echo ""
echo -n "TCP SYN/ACL, UPD or SCTP discovery to given ports <flag>[portlist]: "
read input
        if [ $input == "-PS" ] || [ $input == "-PA" ] || [ $input == "-PU" ] || [ $input == "-PY" ]; then
                echo "Correct"; let "score++"; echo "Score: $score"
        else
                echo "Incorrect"; echo "Score: $score"
        fi
echo ""
echo -n "ICMP echo, timestamp, and netmask request discovery ports: "
read input
        if [ $input == "-PE" ] || [ $input == "-PP" ] || [ $input == "-PM" ]; then
                echo "Correct"; let "score++"; echo "Score: $score"
        else
                echo "Incorrect"; echo "Score: $score"
        fi
echo ""
echo -n "IP Protocol Ping <flag>[protocol list]: "
read input
        if [ $input == "-PO" ]; then
                echo "Correct"; let "score++"; echo "Score: $score"
        else
                echo "Incorrect"; echo "Score: $score"
        fi
echo ""
echo -n "Never do DNS resolution/Always resolve [default: sometimes]: "
read input
        if [ $input == "-n" ] || [ $input == "-R" ]; then
                echo "Correct"; let "score++"; echo "Score: $score"
        else
                echo "Incorrect"; echo "Score: $score"
        fi
echo ""
echo -n "Specify custom DNS servers <flag> <serv1[,serv2],...: "
read input
        if [ $input == "--dns-servers" ]; then
                echo "Correct"; let "score++"; echo "Score: $score"
        else
                echo "Incorrect"; echo "Score: $score"
        fi
echo ""
echo -n "Use OS's DNS resolver: "
read input
        if [ $input == "--system-dns" ]; then
                echo "Correct"; let "score++"; echo "Score: $score"
        else
                echo "Incorrect"; echo "Score: $score"
        fi
echo ""
echo -n "Trace hop path to each host: "
read input
        if [ $input == "--traceroute" ]; then
                echo "Correct"; let "score++"; echo "Score: $score"
        else
                echo "Incorrect"; echo "Score: $score"
        fi
echo ""
if [ $score -eq "10" ];then
	echo "Great job! You scored: $score"
else
	echo "Keep Practicing! You scored: $score"
fi
exit
}


opt_st(){
score=0
echo "Scan Techniques"
echo "Please enter only the flag abbreviation"
echo "Highest score possible is 8"
echo ""
echo -n "TCP SYN/Connect()/ACK/Window/Maimon scans: "
read input
        if [ $input == "-sS" ] || [ $input == "-sT" ] || [ $input == "-sA" ] || [ $input == "-sW" ] || [ $input == "-sM" ]; then
                echo "Correct"; let "score++"; echo "Score: $score"
        else
                echo "Incorrect"; echo "Score: $score"
        fi
echo ""
echo -n "UDP Scan: "
read input
        if [ $input == "-sU" ]; then
                echo "Correct"; let "score++"; echo "Score: $score"
        else
                echo "Incorrect"; echo "Score: $score"
        fi
echo ""
echo -n "TCP Null, FIN, and Xmas scan: "
read input
        if [ $input == "-sN" ] || [ $input == "-sF" ] || [ $input == "-sX" ]; then
                echo "Correct"; let "score++"; echo "Score: $score"
        else
                echo "Incorrect"; echo "Score: $score"
        fi
echo ""
echo -n "Customize TCP scan flags -> answer <flags>: "
read input
        if [ $input == "--scanflags" ]; then
                echo "Correct"; let "score++"; echo "Score: $score"
        else
                echo "Incorrect"; echo "Score: $score"
        fi
echo ""
echo -n "Idle scan <flag> <zombie host[:probeport]>: "
read input
        if [ $input == "-sI" ]; then
                echo "Correct"; let "score++"; echo "Score: $score"
        else
                echo "Incorrect"; echo "Score: $score"
        fi
echo ""
echo -n "SCTP INIT/COOKIE-ECHO scans: "
read input
        if [ $input == "-sY" ] || [ $input == "-sZ" ]; then
                echo "Correct"; let "score++"; echo "Score: $score"
        else
                echo "Incorrect"; echo "Score: $score"
        fi
echo ""
echo -n "IP protocol scan: "
read input
        if [ $input == "-sO" ]; then
                echo "Correct"; let "score++"; echo "Score: $score"
        else
                echo "Incorrect"; echo "Score: $score"
        fi
echo ""
echo -n "FTP bounce scan <flag> <FTP relay host>: "
read input
        if [ $input == "-b" ]; then
                echo "Correct"; let "score++"; echo "Score: $score"
        else
                echo "Incorrect"; echo "Score: $score"
        fi
echo ""
if [ $score -eq "8" ];then
        echo "Great job! You scored: $score"
else
        echo "Keep Practicing! You scored: $score"
fi
exit
}


opt_ps(){
score=0
echo "Port Specifications and Scan Order"
echo "Please enter only the flag abbreviation"
echo "Highest score possible is 6"
echo ""
echo -n "Only scan specified ports <flag> <port ranges>: "
read input
        if [ $input == "-p" ]; then
                echo "Correct"; let "score++"; echo "Score: $score"
        else
                echo "Incorrect"; echo "Score: $score"
        fi
echo ""
echo -n "Exclude the specified ports from scanning <flag> <port ranges>: "
read input
        if [ $input == "--exclude-ports" ]; then
                echo "Correct"; let "score++"; echo "Score: $score"
        else
                echo "Incorrect"; echo "Score: $score"
        fi
echo ""
echo -n "Fast mode - Scan fewer ports than the default scan: "
read input
        if [ $input == "-F" ]; then
                echo "Correct"; let "score++"; echo "Score: $score"
        else
                echo "Incorrect"; echo "Score: $score"
        fi
echo ""
echo -n "Scan ports consecutively - don't randomize: "
read input
        if [ $input == "-r" ]; then
                echo "Correct"; let "score++"; echo "Score: $score"
        else
                echo "Incorrect"; echo "Score: $score"
        fi
echo ""
echo -n "Scan <number> most common ports <flag> <number>: "
read input
        if [ $input == "--top-ports" ]; then
                echo "Correct"; let "score++"; echo "Score: $score"
        else
                echo "Incorrect"; echo "Score: $score"
        fi
echo ""
echo -n "Scan ports more common than <ratio> -> <flag> <ratio>: "
read input
        if [ $input == "--port-ratio" ]; then
                echo "Correct"; let "score++"; echo "Score: $score"
        else
                echo "Incorrect"; echo "Score: $score"
        fi
if [ $score -eq "6" ];then
        echo "Great job! You scored: $score"
else
        echo "Keep Practicing! You scored: $score"
fi
exit
}



opt_sv(){
score=0
echo "Service/ Version Detection"
echo "Please enter only the flag abbreviation"
echo "Highest score possible is 5"
echo ""
echo -n "Probe open ports to determine service/version info: "
read input
        if [ $input == "-sV" ]; then
                echo "Correct"; let "score++"; echo "Score: $score"
        else
                echo "Incorrect"; echo "Score: $score"
        fi
echo ""
echo -n "Set from 0 (light) to 9 (try all probes) -> <flag> <level>: "
read input
        if [ $input == "--version-intensity" ]; then
                echo "Correct"; let "score++"; echo "Score: $score"
        else
                echo "Incorrect"; echo "Score: $score"
        fi
echo ""
echo -n "Limit to most likely probes (intensity 2): "
read input
        if [ $input == "--version-light" ]; then
                echo "Correct"; let "score++"; echo "Score: $score"
        else
                echo "Incorrect"; echo "Score: $score"
        fi
echo ""
echo -n "Try every single probe (intensity 9): "
read input
        if [ $input == "--version-all" ]; then
                echo "Correct"; let "score++"; echo "Score: $score"
        else
                echo "Incorrect"; echo "Score: $score"
        fi
echo ""
echo -n "Show detailed version scan activity (for debugging): "
read input
        if [ $input == "--version-trace" ]; then
                echo "Correct"; let "score++"; echo "Score: $score"
        else
                echo "Incorrect"; echo "Score: $score"
        fi
if [ $score -eq "5" ];then
        echo "Great job! You scored: $score"
else
        echo "Keep Practicing! You scored: $score"
fi
exit
}


opt_ss(){
score=0
echo "Script Scan"
echo "Please enter only the flag abbreviation"
echo "Highest score possible is 7"
echo ""
echo -n "equivalent to --script=default: "
read input
        if [ $input == "-sC" ]; then
                echo "Correct"; let "score++"; echo "Score: $score"
        else
                echo "Incorrect"; echo "Score: $score"
        fi
echo ""
echo  "<Lua scripts> is a comma separated list of directories, script-files or script-categories ->"
echo -n " <flag>=<Lua scripts> : "
read input
        if [ $input == "--script" ]; then
                echo "Correct"; let "score++"; echo "Score: $score"
        else
                echo "Incorrect"; echo "Score: $score"
        fi
echo ""
echo -n "provide arguments to scripts -> <flag>=<n1=v1,[n2=v2,...]>: "
read input
        if [ $input == "--script-args" ]; then
                echo "Correct"; let "score++"; echo "Score: $score"
        else
                echo "Incorrect"; echo "Score: $score"
        fi
echo ""
echo -n "Provide NSE script args in a file -> <flag>=filename: "
read input
        if [ $input == "--script-args-file" ]; then
                echo "Correct"; let "score++"; echo "Score: $score"
        else
                echo "Incorrect"; echo "Score: $score"
        fi
echo ""
echo -n "Show all data sent and received: "
read input
        if [ $input == "--script-trace" ]; then
                echo "Correct"; let "score++"; echo "Score: $score"
        else
                echo "Incorrect"; echo "Score: $score"
        fi
echo ""
echo -n "Update the script database: "
read input
        if [ $input == "--script-updatedb" ]; then
                echo "Correct"; let "score++"; echo "Score: $score"
        else
                echo "Incorrect"; echo "Score: $score"
        fi
echo ""
echo "Show help about scripts. <Lua scripts> is a comma-separated list of script-files or script-categories."
echo -n "<flag>=<Lua scripts>: "
read input
        if [ $input == "--script-help" ]; then
                echo "Correct"; let "score++"; echo "Score: $score"
        else
                echo "Incorrect"; echo "Score: $score"
        fi
if [ $score -eq "7" ]; then
        echo "Great job! You scored: $score"
else
        echo "Keep Practicing! You scored: $score"
fi
exit
}

opt_os(){
score=0
echo "OS Detection"
echo "Please enter only the flag abbreviation"
echo "Highest score possible is 3"
echo ""
echo -n "Enable OS detection: "
read input
        if [ $input == "-O" ]; then
                echo "Correct"; let "score++"; echo "Score: $score"
        else
                echo "Incorrect"; echo "Score: $score"
        fi
echo ""
echo -n "Limit OS detection to promising targets: "
read input
        if [ $input == "--osscan-limit" ]; then
                echo "Correct"; let "score++"; echo "Score: $score"
        else
                echo "Incorrect"; echo "Score: $score"
        fi
echo ""
echo -n "Guess OS more aggressively: "
read input
        if [ $input == "--osscan-guess" ]; then
                echo "Correct"; let "score++"; echo "Score: $score"
        else
                echo "Incorrect"; echo "Score: $score"
        fi
if [ $score -eq "3" ]; then
        echo "Great job! You scored: $score"
else
        echo "Keep Practicing! You scored: $score"
fi
exit
}


opt_tp(){
score=0
echo "Timing and Performance"
echo "Not Yet Implemented"
echo ""
echo "Per the man page..."
echo "Options which take <time> are in seconds, or append 'ms' (milliseconds),"
echo "'s' (seconds), 'm' (minutes), or 'h' (hours) to the value (e.g. 30m)."
echo "-T<0-5>: Set timing template (higher is faster)"
echo "--min-hostgroup/max-hostgroup <size>: Parallel host scan group sizes"
echo "--min-parallelism/max-parallelism <numprobes>: Probe parallelization"
echo "--min-rtt-timeout/max-rtt-timeout/initial-rtt-timeout <time>: Specifies"
echo "probe round trip time."
echo "--max-retries <tries>: Caps number of port scan probe retransmissions".
echo "--host-timeout <time>: Give up on target after this long"
echo " --scan-delay/--max-scan-delay <time>: Adjust delay between probes"
echo "--min-rate <number>: Send packets no slower than <number> per second"
echo "--max-rate <number>: Send packets no faster than <number> per second"
exit
}


opt_fes(){
score=0
echo "FIREWALL/IDS EVASION AND SPOOFING"
echo "Not Yet Implemented"
exit
}


opt_op(){
echo "Output"
echo "Not Yet Implemented"
exit
}

opt_m(){
echo "Misc"
echo "Not Yet Implemented"
exit
}


# While loop for <options>
while test $# -gt 0; do
	case "$1" in
	-h)
		displayUsage
		exit 1
		;;
	-hd)
		opt_hd
		;;
	-st)
		opt_st
		;;
	-ps)
		opt_ps
		;;
	-sv)
		opt_sv
		;;
	-os)
		opt_os
		;;
	-ss)
		opt_ss
		;;
	-tp)
		opt_tp
		;;
	-fes)
		opt_fes
		;;
	-op)
		opt_op
		;;
	-m)
		opt_m
		;;
	\?)
		displayUsage
		exit 1
		;;
	esac
done
# End of script, still a work in progress.
