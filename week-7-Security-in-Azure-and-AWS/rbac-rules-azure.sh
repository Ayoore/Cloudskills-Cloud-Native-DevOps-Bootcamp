# Create an RBAC
az ad sp create-for-rbac -n "AlphaIODevOps" --role Contributor --scopes /subscriptions/31c8b41c-204c-41ae-b2f2-eb58cc3ece07

# Create an RBAC for SDK/programmatic access
az ad sp create-for-rbac -n "AlphaIODevOps" --role Contributor --scopes /subscriptions/31c8b41c-204c-41ae-b2f2-eb58cc3ece07 --sdk-auth