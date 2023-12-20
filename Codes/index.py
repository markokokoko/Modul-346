import boto3
import os
from PIL import Image
import pathlib
from io import BytesIO

s3 = boto3.client('s3')
size = 300, 300


def lambda_handler_replace(event, context):
    print("Start")
    client = boto3.client('s3')
    obj = client.get_object(Bucket='sourcebucket_replace', Key=event['Records'][0]['s3']['object']['key'])
    print("Got Object")

    in_mem_file = BytesIO()
    file_byte_string = obj['Body'].read()
    im = Image.open(BytesIO(file_byte_string))
    im.thumbnail(size, Image.ANTIALIAS)
    # ISSUE : https://stackoverflow.com/questions/4228530/pil-thumbnail-is-rotating-my-image
    im.save(in_mem_file, format=im.format)
    in_mem_file.seek(0)

    print("resized it")

    response = s3.put_object(
        Body=in_mem_file,
        Bucket='destbucket_replace',
        Key='resizedPrefix_replace' + event['Records'][0]['s3']['object']['key']
    )
    print ("saved it")