#!/bin/sh

# Read the first line of the HTTP request to extract the path
read request

# Extract the path from the request line
path=$(echo "$request" | awk '{print $2}' | cut -d '/' -f2)

# Determine the response based on the path
if [ "$path" = "iv" ]; then
  s="informaatioverkostot"
else
  s="muut"
fi

# Output HTTP headers followed by the response body
echo "HTTP/1.1 200 OK"
echo "Content-Type: text/plain; charset=UTF-8"
echo "Connection: close"
echo ""
echo "Moi, $s"

# Ensure the connection is closed
exit 0
