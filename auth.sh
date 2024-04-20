configure_aws_cli() {
    # Prompt the user to enter AWS Access Key ID, Secret Access Key, region, and output format
    read -p "Enter your AWS Access Key ID:" $access_key_id
    read -p "Enter your AWS Secret Access Key: " $secret_access_key
    read -p "Enter your default AWS region: " $region
    read -p "Enter your default output format (json, text, or table): " $output_format

    # Configure the AWS CLI with the provided credentials
    aws configure set aws_access_key_id "$access_key_id"
    aws configure set aws_secret_access_key "$secret_access_key"
    aws configure set default.region "$region"
    aws configure set default.output "$output_format"

    echo "AWS CLI has been configured successfully!"
}

configure_aws_cli