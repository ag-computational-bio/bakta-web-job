import json
import argparse
import subprocess
import subprocess

parser = argparse.ArgumentParser(description='Run tool from json list')
parser.add_argument('--json',   help='A json string with the parameter list')

args = parser.parse_args()
params = json.loads(args.json)
subprocess.call(params)
