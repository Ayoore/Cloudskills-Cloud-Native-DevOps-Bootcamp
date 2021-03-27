# Create an IAM user
aws iam create-user --user-name Easy

# Create an IAM group
aws iam create-group --group-name Easys-Group 

# Add user to group
aws iam add-user-to-group --user-name Easy --group-name Easys-Group