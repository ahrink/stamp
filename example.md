#!/bin/sh
#
# use_ahr_service.sh - Example script to use AHR service for ahr_stamp
# not necessary a working code!

# Function to call the AHR service for ahr_stamp
generate_timestamp() {
    ahr_stamp
}

# Main script execution
echo "Generating timestamps using the AHR service:"
echo "-----------------------------------------"

# Generate timestamps using the AHR service
for i in {1..5}; do
    generate_timestamp
done

echo "-----------------------------------------"
