import sys
import boto3

try:
    def main():
        create_s3bucket(bucket_name)

except Exception as e:
    print(e)


def create_s3bucket(bucket_name):
    s3_bucket = boto3.client(
        's3',
    )

    bucket = s3_bucket.create_bucket(
        Bucket=bucket_name,
        ACL='private',
        CreateBucketConfiguration={'LocationConstraint': 'ap-southeast-2'},
    )

    print(bucket)


bucket_name = sys.argv[1]

if __name__ == '__main__':
    main()


# Had issues with 'LocationConstraint' which is the default region
# I set during the "AWS configure" process.
# Initially when I ran the command "python .\s3bucket.py cloudskills01",
# I got the error "botocore.exceptions.ClientError:
# An error occurred (IllegalLocationConstraintException),
# when calling the CreateBucket operation:
# The unspecified location constraint is incompatible for the
# region specific endpoint this request was sent to."
# Adding the locationConstraint value resolved this.
